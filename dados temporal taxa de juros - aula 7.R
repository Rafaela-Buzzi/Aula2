grafserie <- ggplot(dadostaxabr,
                    aes(x = year, y = FR.INR.RINR)) +
  geom_line(color = "red", size = 1) +
  geom_point(color = "red", size = 2) +
  labs(title = "Série Histórica da Taxa de Juros Real - Brasil",
       subtitle = "Fonte: World Bank",
       x = "Ano",
       y = "Taxa de Juros Real (%)") +
  theme_minimal(base_family = "Helvetica") +
  theme(
    plot.title = element_text(face = "bold", size = 16),
    plot.subtitle = element_text(size = 12),
    axis.title = element_text(size = 12),
    axis.text = element_text(size = 10)
  )

print(grafserie)
