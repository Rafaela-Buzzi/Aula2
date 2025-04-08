
# Gráfico de dados em painel (todos os países, destaque para BR e US)
grafpainel <- ggplot(data = dadostaxa,
                     mapping = aes(x = year, y = FR.INR.RINR)) +
  geom_point(alpha = 0.2, color = "gray70") +
  geom_line(data = filter(dadostaxa, country %in% c("Brazil", "United States")),
            aes(color = country, group = country), size = 1) +
  scale_color_manual(values = c("Brazil" = "red", "United States" = "blue")) +
  labs(title = "Taxa de Juros Real ao Longo do Tempo",
       subtitle = "Brasil e EUA em destaque | Fonte: World Bank",
       x = "Ano",
       y = "Taxa de Juros Real (%)",
       color = "País") +
  theme_minimal(base_family = "Helvetica") +
  theme(
    plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
    plot.subtitle = element_text(size = 12, hjust = 0.5),
    axis.title = element_text(size = 12),
    axis.text = element_text(size = 10),
    legend.title = element_text(size = 10),
    legend.text = element_text(size = 10)
  )

print(grafpainel)







