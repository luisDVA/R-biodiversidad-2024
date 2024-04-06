library(ggplot2)
library(readr)

#### Miércoles
#### Ejercicio 1


# Cargar los datos
ranas <- read_csv("archivos-ej/ranas.csv")

# imprimir los datos en pantalla
ranas

# sin geom
ggplot(ranas,aes(x=svl,y=freq_dom))

# con geom
ggplot(ranas,aes(x=svl,y=freq_dom))+
  geom_point()

# más mapeo estético (forma)
ggplot(ranas,aes(x=svl,y=freq_dom,shape=familia))+
  geom_point()

# forma y color
ggplot(ranas,aes(x=svl,y=freq_dom,shape=familia, color=familia))+
  geom_point()

# ¿que pasa aquí?
ggplot(ranas,aes(x=svl,y=freq_dom,shape=familia),color=familia)+
  geom_point()
