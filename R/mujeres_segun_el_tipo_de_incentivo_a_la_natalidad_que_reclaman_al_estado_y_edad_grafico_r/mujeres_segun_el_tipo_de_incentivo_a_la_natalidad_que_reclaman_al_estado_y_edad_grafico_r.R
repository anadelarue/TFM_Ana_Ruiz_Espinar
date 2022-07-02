library(tidyverse)
library(ggplot2)
library(svglite)

datos <- mujeres_segun_el_tipo_de_incentivo_a_la_natalidad_que_reclaman_al_estado_y_edad_limpio

edad <- mujeres_segun_el_tipo_de_incentivo_a_la_natalidad_que_reclaman_al_estado_y_edad_limpio$Edad

total <- mujeres_segun_el_tipo_de_incentivo_a_la_natalidad_que_reclaman_al_estado_y_edad_limpio$Total

grupo <- mujeres_segun_el_tipo_de_incentivo_a_la_natalidad_que_reclaman_al_estado_y_edad_limpio$`Tipo de incentivo`

grafico <- ggplot(datos, aes(x = edad, y = total, group = grupo, color = grupo)) + geom_line() + scale_x_discrete(limits = c("Menos de 25 años", "De 25 a 29 años", "De 30 a 34 años", "De 35 a 39 años", "De 40 a 44 años", "De 45 a 49 años"))
grafico

ggsave(file="mujeres_segun_el_tipo_de_incentivo_a_la_natalidad_que_reclaman_al_estado_y_edad_limpio.svg", width=16, height=8)