library(tidyverse)
library(ggplot2)
library(svglite)

ggplot(indices_nacionales_general_y_de_grupos_ECOICOP_limpio, aes(y=indices_nacionales_general_y_de_grupos_ECOICOP_limpio$Periodo, x=indices_nacionales_general_y_de_grupos_ECOICOP_limpio$Total)) + 
  geom_bar(position="stack", stat="identity")
ggsave(file="indices_nacionales_general_y_de_grupos_ECOICOP_limpio.svg", width=10, height=8)
