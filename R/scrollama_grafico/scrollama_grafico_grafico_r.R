library(ggplot2)
library(svglite)
library(tidyverse)

ggplot(scrollama_grafico, aes(x = scrollama_grafico$Localización, y = scrollama_grafico$`Salario medio jornada completa`)) + 
  geom_bar(stat = "identity") + ylim(0, 1720)

ggsave(file="scrollama_grafico_grafico_r.svg", width=16, height=8)
