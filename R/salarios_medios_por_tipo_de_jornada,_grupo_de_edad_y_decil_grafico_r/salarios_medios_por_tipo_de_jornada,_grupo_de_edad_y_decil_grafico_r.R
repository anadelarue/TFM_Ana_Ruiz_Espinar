library(tidyverse)
library(ggplot2)
library(svglite)

grafico <- ggplot(salarios_medios_por_tipo_de_jornada_grupo_de_edad_y_decil_limpio, aes(y=salarios_medios_por_tipo_de_jornada_grupo_de_edad_y_decil_limpio$Total, x=salarios_medios_por_tipo_de_jornada_grupo_de_edad_y_decil_limpio$Periodo)) + 
  geom_bar(stat="identity") + scale_x_discrete(breaks = c(2008, 2020))
grafico


ggsave(file="salarios_medios_por_tipo_de_jornada,_grupo_de_edad_y_decil_grafico_r.svg", width=10, height=8)