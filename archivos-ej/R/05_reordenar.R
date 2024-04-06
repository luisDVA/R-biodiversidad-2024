library(ggplot2)
library(forcats)


# cargar datos
gateo <- read.csv("archivos-ej/edad_gateo.csv")
gateo
# barras
ggplot(gateo,aes(x=mes_nacimiento,y=edad_gateo))+
  geom_bar(stat = "identity",fill="#0a4e96",color="black")

# barras, horizontales
ggplot(gateo,aes(x=mes_nacimiento,y=edad_gateo))+
  geom_bar(stat = "identity",fill="#0a4e96",color="black")+
coord_flip()

# ordenando una variable segun los valores de otra
ggplot(gateo,
       aes(x=fct_reorder(mes_nacimiento,edad_gateo),
           y=edad_gateo))+
  geom_bar(stat = "identity",fill="#0a4e96",color="black")+coord_flip()

# ordenando una variable segun los valores de otra, descendiente
ggplot(gateo,
       aes(x=fct_reorder(mes_nacimiento,edad_gateo, .desc=TRUE),
           y=edad_gateo))+
  geom_bar(stat = "identity",fill="#0a4e96",color="black")+coord_flip()



# arreglar el nombre del eje x


# agregar titulo

# ¿cómo podemos acomodar los meses cronológicamente?


