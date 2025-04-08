# Ordenar os dados e filtrar valores não nulos
dadostaxa2023_clean <- dadostaxa2023 %>% 
  filter(!is.na(FR.INR.RINR)) %>%
  arrange(desc(FR.INR.RINR)) %>%
  slice_max(FR.INR.RINR, n = 20)  # Top 20 países

grafcorte <- ggplot(dadostaxa2023_clean, 
                    aes(x = reorder(country, FR.INR.RINR), 
                        y = FR.INR.RINR, 
                        fill = country)) +
  geom_col(show.legend = FALSE) +
  coord_flip() +
  labs(title = "Taxa de Juros Real em 2023",
       subtitle = "Top 20 países com maiores taxas | Fonte: World Bank",
       x = "País",
       y = "Taxa de Juros Real (%)") +
  theme_minimal(base_family = "Helvetica") +
  theme(
    plot.title = element_text(face = "bold", size = 16),
    plot.subtitle = element_text(size = 12),
    axis.title = element_text(size = 12),
    axis.text = element_text(size = 10)
  )

print(grafcorte)
