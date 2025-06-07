#Escalar los datos/ normalizar (solo los predictores)
diabetes$Outcome = scale(diabetes$Outcome) 
diabetes$Pregnancies = scale(diabetes$Pregnancies)
diabetes$Glucose= scale(diabetes$Glucose)
diabetes$BloodPressure = scale(diabetes$BloodPressure)
diabetes$SkinThickness = scale(diabetes$SkinThickness)
diabetes$Insulin = scale(diabetes$Insulin)
diabetes$BMI = scale(diabetes$BMI)
diabetes$DiabetesPedigreeFunction = scale(diabetes$DiabetesPedigreeFunction)
diabetes$Age = scale(diabetes$Age)

#creamos el modelo de la red neuronal
modelo = nnet(Outcome ~ Pregnancies + Glucose + BloodPressure + SkinThickness + Insulin + BMI + DiabetesPedigreeFunction + Age, data = diabetes,
              size = 9, maxit = 500, decay = 0.01, linout = FALSE)

# Ver los pesos de la red
print(modelo)

# Hacer predicciones
predicciones = predict(modelo, diabetes, type = "raw")
print(predicciones)

# Comparar con los valores reales
tabla = table(Predicho = predicciones, Real = diabetes$Outcome)

print(tabla)
print(modelo)

#Medir precisión
Precision = sum(diag(tabla)) / sum(tabla)
cat("Precisiónn del modelo:", round(Precision * 100, 2), "%\n")


