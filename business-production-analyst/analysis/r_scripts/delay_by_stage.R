library(tidyverse)

production_stages <- read_csv("production_stages.csv")

delay_stage <- production_stages %>%
  group_by(stage_name) %>%
  summarise(
    total_delay_min = sum(delay_min),
    .groups = "drop"
  ) %>%
  arrange(desc(total_delay_min))

p_delay_stage <- ggplot(delay_stage, aes(x = stage_name, y = total_delay_min)) +
  geom_col() +
  labs(
    title = "Total Production Delay by Stage",
    x = "Production Stage",
    y = "Total Delay (minutes)"
  ) +
  theme_minimal()

p_delay_stage

ggsave(
  filename = "../visuals/delay_by_stage.png",
  plot = p_delay_stage,
  width = 8,
  height = 5
)
