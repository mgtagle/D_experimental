# Marco Aurelio González Tagle
# 23/02/2023
# Laboratorio 1

# Gastos totales

300 + 240 + 1527 + 400 + 1500 + 1833
300/6
200 * 2
4 ^ 2

celular <- 300
celular *12

gastos <- c(300, 240, 1527, 400, 1500, 1833)
costos <- c(300, 240, 1527, 400, 1500, 1833)

nomb <- c("celular", "transporte", "comestibles", "gimnasio",
          "alquiler", "otros")

# Crear data frame

Gastos <- data.frame(costos, nomb)

barplot(gastos, 
        col = c("lightgreen",  "red", "lightgreen", "lightgreen","lightgreen","lightgreen"),
        main = "Gastos universitarios mensuales",
        ylim = c(0,2000), xlab = "Rubros",
        ylab = "Costos en MXP",
        names.arg = c("celular", "transporte", "comestibles", "gimnasio",
                      "alquiler", "otros"),
        )

barplot(Gastos$costos, names.arg = Gastos$nomb,
        main = "Gastos Universitarios (2023)",
        col = "red",
        ylim = c(0,2000),
        xlab = "Costos",
        ylab = "MXP")
