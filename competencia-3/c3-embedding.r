require("rlang")
if (!require("data.table")) install.packages("data.table")
library(data.table)
#----- incorporar ultima columna del archivo de scoring, nro cliente, fotomes (202109) y probabilidad.

setwd("C:/Users/lupia/Documents/FACULTADES/MAESTRÍA/DM en economía y finanzas/embedding c3")
archivos <- list.files(pattern = "\\.txt$")

#---- hacer un promedio por cada cliente

resultados <- data.table(numero_de_cliente = integer(), foto_mes = integer(), probabilidad = numeric())

for (archivo in archivos) {
  data <- fread(archivo)
  promedios <- data[, .(probabilidad = mean(sem_1_1, na.rm = TRUE)), by = .(numero_de_cliente, foto_mes)]
  resultados <- rbind(resultados, promedios, use.names = TRUE, fill = TRUE)
}

# Agrupar el dataset final por cliente y mes para asegurar que los promedios estén consolidados
resultados_finales <- resultados[
  , .(probabilidad = mean(probabilidad, na.rm = TRUE)),
    by = .(numero_de_cliente, foto_mes)
]

# 6. Visualiza el resultado
print(head(resultados_finales))

#---- ordenar la tabla en base a la probabilidad de manera descendente
setorder(resultados_finales, -probabilidad)

# Verifica los primeros registros ordenados
print(head(resultados_finales))

#----- agregar una nueva columna: (ver como se tiene que llamar) y ponerle un 1 a los primeros 11 mil.

resultados_finales[, predicted := ifelse(.I <= 11000, 1, 0)]

#---- guardar el archivo en csv para luego subir manualmente a kaggle.

# Seleccionar las columnas nro_cliente y predicted
kaggle_promedios <- resultados_finales[, .(numero_de_cliente, predicted)]

# Guardar el nuevo archivo con el nombre especificado
fwrite(kaggle_promedios, "kaggle_promedios_4a12.csv")

