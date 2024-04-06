#### Miércoles
# ejercicio 2, personalización
library(ggplot2)
library(readr)

# Cargar los datos
ranas <- read_csv("archivos-ej/ranas.csv")

# ranas
ggplot(ranas,aes(x=svl,y=freq_dom,shape=familia, color=familia))+
  geom_point()

# rótulos de los ejes
ggplot(ranas,aes(x=svl,y=freq_dom,shape=familia, color=familia))+
  geom_point()+
  labs(x="Tamaño Corporal (SVL)", y="Frequencia Dominante (Hz)")

# titulo, tamaño de los puntos, y un "theme"
ggplot(ranas,aes(x=svl,y=freq_dom,shape=familia, color=familia))+
  geom_point(size=4)+
  labs(x="Tamaño Corporal (SVL)", y="Frequencia Dominante (Hz)",
        title="Llamados Ranas")+
  theme_minimal()

?pch

# contornos a los puntos
ggplot(ranas,aes(x=svl,y=freq_dom,shape=familia, fill=familia))+
  geom_point(size=4,color="white")+
  labs(x="Tamaño Corporal (SVL)", y="Frequencia Dominante (Hz)",
       title="Llamados Ranas")+
  scale_shape_manual(values=c(21,22,23))+
  theme_minimal()

# Cambiar título de leyenda a "Familia"

# Agregar subtítulo y una nota al pie de la figura (ver ayuda de 'labs()')

# Cambiar los colores de los puntos




