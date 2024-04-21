library(tidyverse)
library(here)

tv_hours_tables <- gss_cat %>% 
  filter(age < 30) %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hours = mean(tvhours, na.rm = TRUE))

write_csv(tv_hours_tables, here("TV_hours_by_marital.csv"))
