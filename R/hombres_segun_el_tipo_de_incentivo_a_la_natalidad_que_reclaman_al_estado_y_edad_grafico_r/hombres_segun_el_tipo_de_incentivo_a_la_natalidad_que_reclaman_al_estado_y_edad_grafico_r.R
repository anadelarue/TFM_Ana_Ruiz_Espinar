library(tidyverse)
library(ggplot2)
library(svglite)

datos <- hombres_segun_el_tipo_de_incentivo_a_la_natalidad_que_reclaman_al_estado_y_edad_limpio

edad <- hombres_segun_el_tipo_de_incentivo_a_la_natalidad_que_reclaman_al_estado_y_edad_limpio$Edad

total <- hombres_segun_el_tipo_de_incentivo_a_la_natalidad_que_reclaman_al_estado_y_edad_limpio$Total

grupo <- hombres_segun_el_tipo_de_incentivo_a_la_natalidad_que_reclaman_al_estado_y_edad_limpio$`Tipo de incentivo`

grafico <- ggplot(datos, aes(x = edad, y = total, group = grupo, color = grupo)) + geom_line() + scale_x_discrete(limits = c("Menos de 30 años", "De 30 a 34 años", "De 35 a 39 años", "De 40 a 44 años", "De 45 a 49 años"))
grafico

ggsave(file="hombres_segun_el_tipo_de_incentivo_a_la_natalidad_que_reclaman_al_estado_y_edad_grafico_r.svg", width=16, height=8)
