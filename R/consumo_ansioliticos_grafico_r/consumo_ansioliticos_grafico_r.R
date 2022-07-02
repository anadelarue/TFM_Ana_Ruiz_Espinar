library(tidyverse)
library(ggplot2)
library(svglite)

ggplot(consumo_ansioliticos_ocde_limpio, aes(fill=Region, y=Total, x=Año)) + 
  geom_bar(position="dodge", stat="identity") + scale_x_discrete(limits = c(2008, 2020))


ggsave(file="consumo_ansioliticos_ocde_grafico_r.svg", width=10, height=8)