library(ggplot2)
library(tidyverse)
library(svglite)

grafico <- ggplot(flujo_emigracion_destino_extranjero, aes(x=flujo_emigracion_destino_extranjero$Año, y=flujo_emigracion_destino_extranjero$Total)) + 
  geom_bar(stat = "identity")
grafico
ggsave(file="flujo_emigracion_grafico_r.svg")
