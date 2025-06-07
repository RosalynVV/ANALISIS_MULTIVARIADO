
# Datos
equipoA <- c(2, 3, 1, 4, 2, 3, 2, 1, 3, 2)
equipoB <- c(3, 2, 1, 3, 2, 2, 4, 2, 3, 1)

# Prueba t para muestras independientes (varianzas iguales por defecto)
t.test(equipoA, equipoB, var.equal = TRUE)


boxplot(equipoA, equipoB, names = c("Equipo A", "Equipo B"))
medias <- c(mean(equipoA), mean(equipoB))
points(medias, pch = 18, col = "purple")


par(mar = c(2, 2, 2, 2))
par(mfrow = c(1, 2))  # Mostrar dos gráficos lado a lado

qqnorm(equipoA, xlab = "", ylab = "", main = "Equipo A")
qqline(equipoA)

qqnorm(equipoB, xlab = "", ylab = "", main = "Equipo B")
qqline(equipoB)

