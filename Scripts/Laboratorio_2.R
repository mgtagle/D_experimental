# Laboratorio 2
# Marco
# Matrícula


# Importar BD excel -------------------------------------------------------

# Utilizar la función read.csv

Vivero <- read.csv("Scripts/BD1_vivero.csv", header = TRUE)

# Convertir Tratamiento a factor

Vivero$Tratamiento <- as.factor(Vivero$Tratamiento)

summary(Vivero)

mean(Vivero$IE)
sd(Vivero$IE)
var(Vivero$IE)
mean(Vivero)


# Importar datos de dropbox

prof_url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
profepa <- read.csv(prof_url)



prof.url2 <- paste0("http://www.profepa.gob.mx/innovaportal/",
                    "file/7635/1/accionesInspeccionfoanp.csv")

profepa2 <- read.csv(prof.url2)



summary(profepa)
profepa$Operativo == max(profepa$Operativo)
max.oper <- subset(profepa, profepa$Operativo == max(profepa$Operativo))

boxplot(profepa$Recorrido)

prof.SOC <- subset(profepa, profepa$Operativo != max(profepa$Operativo))

boxplot(prof.SOC$Operativo)



# Datos dropbox -----------------------------------------------------------
library(repmis)

conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

boxplot(conjunto$Diametro)


conjunto$Especie <- as.factor(conjunto$Especie)
conjunto$Clase <- as.factor(conjunto$Clase)
boxplot(conjunto$Diametro ~ conjunto$Especie,
        col="lightgreen",
        xlab="Especie",
        ylab ="Diámetro",
        main="Bosque obscuro")


boxplot(conjunto$Altura ~ conjunto$Especie,
        col="lightgreen",
        xlab="Especie",
        ylab ="ALtura (m)",
        main="Bosque obscuro")
