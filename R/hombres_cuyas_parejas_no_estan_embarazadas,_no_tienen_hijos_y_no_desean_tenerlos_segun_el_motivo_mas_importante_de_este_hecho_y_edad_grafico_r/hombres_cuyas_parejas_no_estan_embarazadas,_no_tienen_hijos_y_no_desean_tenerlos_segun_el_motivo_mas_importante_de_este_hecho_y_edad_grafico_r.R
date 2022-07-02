library(tidyverse)
library(ggplot2)
library(svglite)

datos <- hombres_cuyas_parejas_no_estan_embarazadas_no_tienen_hijos_y_no_desean_tenerlos_segun_el_motivo_mas_importante_de_este_hecho_y_edad_limpio

edad <- hombres_cuyas_parejas_no_estan_embarazadas_no_tienen_hijos_y_no_desean_tenerlos_segun_el_motivo_mas_importante_de_este_hecho_y_edad_limpio$Edad

total <- hombres_cuyas_parejas_no_estan_embarazadas_no_tienen_hijos_y_no_desean_tenerlos_segun_el_motivo_mas_importante_de_este_hecho_y_edad_limpio$Total

grupo <- hombres_cuyas_parejas_no_estan_embarazadas_no_tienen_hijos_y_no_desean_tenerlos_segun_el_motivo_mas_importante_de_este_hecho_y_edad_limpio$Motivo


grafico <- ggplot(datos, aes(x = edad, y = total, group = grupo, color = grupo)) + geom_line() + scale_x_discrete(limits = c("Menos de 30 años", "De 30 a 34 años", "De 35 a 39 años", "De 40 a 44 años", "De 45 a 49 años")) + ylim(0, 60)
grafico


ggsave(file="hombres_cuyas_parejas_no_estan_embarazadas,_no_tienen_hijos_y_no_desean_tenerlos_segun_el_motivo_mas_importante_de_este_hecho_y_edad_grafico_r.svg", width=10, height=8)
