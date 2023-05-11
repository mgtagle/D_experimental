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


# t-test dependientes ------------------------------------------------------

semilla <- read.csv("mainproduccion.csv", header = T)
semilla$Tiempo <- as.factor(semilla$Tiempo)


# Gráfica boxplot

boxplot(semilla$Tiempo, semilla$Kgsem)
boxplot(semilla$Tiempo, semilla$BioRama)
boxplot(semilla$Kgsem)


t.test(semilla$Kgsem ~ semilla$Tiempo, paired = TRUE)

t.test(semilla$Germ ~ semilla$Tiempo, paired =T)

t.test(semilla$BioRama ~ semilla$Tiempo, paired=T)
