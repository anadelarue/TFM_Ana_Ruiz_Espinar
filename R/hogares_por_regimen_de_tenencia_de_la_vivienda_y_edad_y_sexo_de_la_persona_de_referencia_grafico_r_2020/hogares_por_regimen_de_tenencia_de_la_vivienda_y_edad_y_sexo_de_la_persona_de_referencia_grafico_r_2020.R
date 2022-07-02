library(tidyverse)
library(ggplot2)
library(svglite)

ggplot(hogares_por_regimen_de_tenencia_de_la_vivienda_y_edad_y_sexo_de_la_persona_de_referencia_limpio_2020, aes(y=hogares_por_regimen_de_tenencia_de_la_vivienda_y_edad_y_sexo_de_la_persona_de_referencia_limpio_2020$Total, x=hogares_por_regimen_de_tenencia_de_la_vivienda_y_edad_y_sexo_de_la_persona_de_referencia_limpio_2020$`Régimen de tenencia de la vivienda principal`)) + 
  geom_bar(position="stack", stat="identity") + ylim(0, 60)
ggsave(file="hogares_por_regimen_de_tenencia_de_la_vivienda_y_edad_y_sexo_de_la_persona_de_referencia_grafico_r_2020.svg", width=10, height=8)
