library(tidyverse)

production_stages <- read_csv("production_stages.csv")

rework_stage <- production_stages %>%
  group_by(stage_name, rework) %>%
  summarise(count = n(), .groups = "drop") %>%
  group_by(stage_name) %>%
  mutate(percentage = count / sum(count) * 100)

p_rework <- ggplot(rework_stage, aes(x = stage_name, y = percentage, fill = rework)) +
  geom_col(position = "stack") +
  labs(
    title = "Rework Rate by Production Stage",
    x = "Production Stage",
    y = "Percentage (%)",
    fill = "Rework"
  ) +
  theme_minimal()

p_rework

ggsave(
  filename = "../visuals/rework_rate_by_stage.png",
  plot = p_rework,
  width = 8,
  height = 5
)
