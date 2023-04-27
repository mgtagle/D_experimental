# Marco Aurelio Gonzalez tagle
# FCF
# Nr. Matricula


# Importar ----------------------------------------------------------------

setwd("C:/Repositorio_GIT/D_experimental/Scripts/")
plantulas <- read.csv("BD1_vivero.csv", header =T)
plantulas$Tratamiento <- as.factor(plantulas$Tratamiento)


# Revisar Datos -----------------------------------------------------------

shapiro.test(plantulas$IE)

bartlett.test(plantulas$IE ~ plantulas$Tratamiento)


# t-test indep ------------------------------------------------------------
t.test(plantulas$IE ~ plantulas$Tratamiento, var.equal=T)


# t-test  one sample ------------------------------------------------------
mean(plantulas$IE)
t.test(plantulas$IE, mu = 0.90)
t.test(plantulas$IE, mu = 0.85)
