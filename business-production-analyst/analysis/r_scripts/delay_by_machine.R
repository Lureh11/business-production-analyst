library(tidyverse)
library(ggplot2)

production_stages <- read_csv("production_stages.csv")

delay_machine <- production_stages %>%
  group_by(machine_id) %>%
  summarise(
    total_delay_min = sum(delay_min),
    .groups = "drop"
  ) %>%
  arrange(desc(total_delay_min))

p_delay_machine <- ggplot(delay_machine, aes(x = machine_id, y = total_delay_min)) +
  geom_col() +
  labs(
    title = "Total Production Delay by Machine",
    x = "Machine ID",
    y = "Total Delay (minutes)"
  ) +
  theme_minimal()

p_delay_machine

ggsave(
  filename = "../visuals/delay_by_machine.png",
  plot = p_delay_machine,
  width = 8,
  height = 5
)