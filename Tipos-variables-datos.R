data(mtcars)
mtcars

gasolina <- subset(mtcars, select = c("mpg", "cyl", "hp", "vs", "am"))

names(gasolina) = c("Millas.galon", "Cilindros", "Caballos.fuerza", "Tipo.motor", "Transmision")

dir.create("Datos-ejemplos")
write.csv(gasolina, "Datos-ejemplos/Consumo-gasolina.csv")

#####
data(iris)
write.csv(iris, "Datos-ejemplos/Iris.csv")

####
data("PlantGrowth")

PlantGrowth

names(PlantGrowth) <- c("Peso", "Grupo")

write.csv(PlantGrowth, "Datos-ejemplos/CrecimientPlantas.csv")

####

data("ToothGrowth")

names(ToothGrowth) <- c("Longitud", "Suplemento", "Dosis")

write.csv(ToothGrowth, "Datos-ejemplos/CrecimientoDientes.csv")
