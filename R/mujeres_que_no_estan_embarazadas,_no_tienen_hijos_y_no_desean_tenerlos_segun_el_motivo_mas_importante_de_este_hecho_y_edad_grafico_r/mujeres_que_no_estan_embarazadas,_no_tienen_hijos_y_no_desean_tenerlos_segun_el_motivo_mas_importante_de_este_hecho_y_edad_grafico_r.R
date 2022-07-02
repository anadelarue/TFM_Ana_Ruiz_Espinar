library(tidyverse)
library(ggplot2)
library(svglite)

datos <- mujeres_que_no_estan_embarazadas_no_tienen_hijos_y_no_desean_tenerlos_segun_el_motivo_mas_importante_de_este_hecho_y_edad_limpio

edad <- mujeres_que_no_estan_embarazadas_no_tienen_hijos_y_no_desean_tenerlos_segun_el_motivo_mas_importante_de_este_hecho_y_edad_limpio$Edad

total <- mujeres_que_no_estan_embarazadas_no_tienen_hijos_y_no_desean_tenerlos_segun_el_motivo_mas_importante_de_este_hecho_y_edad_limpio$Total

grupo <- mujeres_que_no_estan_embarazadas_no_tienen_hijos_y_no_desean_tenerlos_segun_el_motivo_mas_importante_de_este_hecho_y_edad_limpio$Motivo

grafico <- ggplot(datos, aes(x = edad, y = total, group = grupo, color = grupo)) + geom_line() + scale_x_discrete(limits = c("Menos de 25 años", "De 25 a 29 años", "De 30 a 34 años", "De 35 a 39 años", "De 40 a 44 años", "De 45 a 49 años")) + ylim(0, 60)
grafico

ggsave(file="mujeres_que_no_estan_embarazadas,_no_tienen_hijos_y_no_desean_tenerlos_segun_el_motivo_mas_importante_de_este_hecho_y_edad_grafico_r.svg", width=10, height=8)
