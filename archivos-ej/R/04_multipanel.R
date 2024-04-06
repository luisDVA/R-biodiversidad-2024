# ejercicio 3, facetas
library(ggplot2)

# Cargar los datos
cafeteria <- read.csv("archivos-ej/cafeteria.csv")

# gráfico inicial
ggplot(cafeteria,
       aes(x=grasa,y=energia,shape=bajo_grasa, color=bajo_grasa))+
  geom_point(size=4)+
  labs(x="grasa",y="energía", title="Menú Cafetería")

# facet wrap parte los datos para hacer figuras multipanel
ggplot(cafeteria,
       aes(x=grasa,y=energia,shape=bajo_grasa, color=bajo_grasa))+
  geom_point(size=4)+
  labs(x="grasa",y="energía", title="Menú Cafetería")+
  facet_wrap(~bajo_grasa) # notación de formula

ggplot(cafeteria,
       aes(x=grasa,y=energia,shape=bajo_grasa, color=bajo_grasa))+
  geom_point(size=4)+
  labs(x="grasa",y="energía", title="Menú Cafetería")+
  facet_wrap("bajo_grasa") # notación de formula


# cambiar no. de columnas
ggplot(cafeteria,
       aes(x=grasa,y=energia,shape=bajo_grasa, color=bajo_grasa))+
  geom_point(size=4)+
  labs(x="grasa",y="energía", title="Menú Cafetería")+
  facet_wrap("bajo_grasa",ncol = 1)

# Ejercicio
# mejor hacer una figura por tipo de alimento


# facet grid
# para separar por dos o más variables
ggplot(cafeteria,
       aes(x=grasa,y=energia,shape=bajo_grasa, color=bajo_grasa))+
  geom_point(size=4)+
  labs(x="grasa",y="energía", title="Menú Cafetería")+
  facet_grid(bajo_grasa~tipo)

# mejorar rótulos
# vector con nombres para los paneles
menu_dieta <- c("TRUE" = "Menú dieta", "FALSE"="Menú general")
menu_dieta

ggplot(cafeteria,
       aes(x=grasa,y=energia,shape=bajo_grasa, color=bajo_grasa))+
  geom_point(size=4)+
  labs(x="grasa",y="energía", title="Menú Cafetería")+
  facet_grid(bajo_grasa~tipo,
             labeller = labeller(bajo_grasa=menu_dieta))


# sin la leyenda que ya no hace falta
ggplot(cafeteria,
       aes(x=grasa,y=energia,shape=bajo_grasa, color=bajo_grasa))+
  geom_point(size=4)+
  labs(x="grasa",y="energía", title="Menú Cafetería")+
  facet_grid(bajo_grasa~tipo,
             labeller = labeller(bajo_grasa=menu_dieta))+
   theme(legend.position="none")


ggplot(cafeteria,aes(carbohidratos,proteina))+
  geom_point()+facet_wrap("tipo")
