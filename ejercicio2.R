# Datos
antes <- c(7, 6, 5, 6, 7)
despues <- c(8, 7, 8, 8, 9)


# Prueba t para muestras pareadas
t.test(antes, despues, paired = TRUE)


boxplot(antes, despues, names = c("Antes", "Después"))
medias <- c(mean(antes), mean(despues))
points(medias, pch = 18, col = "purple")


par(mar = c(2, 2, 2, 2))
par(mfrow = c(1, 2))

qqnorm(antes, xlab = "", ylab = "", main = "Antes")
qqline(antes)

qqnorm(despues, xlab = "", ylab = "", main = "Después")
qqline(despues)
