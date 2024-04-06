#### Miércoles
# ejercicio 3, colores
library(ggplot2)
library(readr)
library(scico)

# Cargar los datos
ranas <- read_csv("archivos-ej/ranas.csv")


# gráfico inicial
ggplot(ranas,aes(x=svl,y=freq_dom,fill=svl))+
  geom_point(size=4,color="white",pch=21)+
  labs(x="Tamaño Corporal (SVL)", y="Frequencia Dominante (Hz)",
       title="Llamados Ranas")

# modificar rampa
ggplot(ranas,aes(x=svl,y=freq_dom,fill=svl))+
  geom_point(size=4,color="white",pch=21)+
  labs(x="Tamaño Corporal (SVL)", y="Frequencia Dominante (Hz)",
       title="Llamados Ranas")+
   scale_fill_gradient(low = "blue",high = "pink",)

# viridis
ggplot(ranas,aes(x=svl,y=freq_dom,fill=svl))+
  geom_point(size=4,color="white",pch=21)+
  labs(x="Tamaño Corporal (SVL)", y="Frequencia Dominante (Hz)",
       title="Llamados Ranas")+
  scale_fill_viridis_c()

# viridis, Inferno
ggplot(ranas,aes(x=svl,y=freq_dom,fill=svl))+
  geom_point(size=4,color="white",pch=21)+
  labs(x="Tamaño Corporal (SVL)", y="Frequencia Dominante (Hz)",
       title="Llamados Ranas")+
  scale_fill_viridis_c(option = "F")

# viridis, revertir dirección
ggplot(ranas,aes(x=svl,y=freq_dom,fill=svl))+
  geom_point(size=4,color="black",pch=21)+
  labs(x="Tamaño Corporal (SVL)", y="Frequencia Dominante (Hz)",
       title="Llamados Ranas")+
  scale_fill_viridis_c(direction = -1)

# scico
scico_palette_show()

ggplot(ranas,aes(x=svl,y=freq_dom,fill=svl))+
  geom_point(size=4,color="black",pch=21)+
  labs(x="Tamaño Corporal (SVL)", y="Frequencia Dominante (Hz)",
       title="Llamados Ranas")+
  scale_fill_scico(palette = 'nuuk')


ggplot(ranas,aes(x=svl,y=freq_dom,fill=svl))+
  geom_point(size=4,color="black",pch=21)+
  labs(x="Tamaño Corporal (SVL)", y="Frequencia Dominante (Hz)",
       title="Llamados Ranas")+
  scale_fill_scico(palette = 'bamako')


ggplot(ranas,aes(x=svl,y=freq_dom,fill=svl))+
  geom_point(size=4,color="black",pch=21)+
  labs(x="Tamaño Corporal (SVL)", y="Frequencia Dominante (Hz)",
       title="Llamados Ranas")+
  scale_fill_scico(palette = 'davos', direction = -1)
