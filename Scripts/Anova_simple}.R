# MAGT
# 25/05/2023


# Importar datos ----------------------------------------------------------
setwd( "C:/Repositorio_GIT/D_experimental/Scripts")
Germ <- read.csv("Germinacion.csv", header = T)
Germ$Trat <- as.factor(Germ$Trat)


# Gráfica -----------------------------------------------------------------

boxplot(Germ$PG ~ Germ$Trat,
        col="lightblue",
        xlab = "Tratamientos Germinativos",
        ylab = "% Germinación")


# Ordenar tratamientos ----------------------------------------------------

levels(Germ$Trat)
Germ$Trat <- factor(Germ$Trat, levels =c("Ctrl", "EM",
                                        "RA", "AgC","H2SO4"))
levels(Germ$Trat)


boxplot(Germ$PG ~ Germ$Trat,
        col="lightblue",
        xlab = "Tratamientos Germinativos",
        ylab = "% Germinación")


# Función tapply ----------------------------------------------------------

tapply(Germ$PG, Germ$Trat, mean)
tapply(Germ$PG, Germ$Trat, var)


# Anova -------------------------------------------------------------------

germ.aov <- aov(Germ$PG ~ Germ$Trat)
summary(germ.aov)


# Prueba de Tuckey --------------------------------------------------------

TukeyHSD(germ.aov, conf.level = 0.95)

plot(TukeyHSD(germ.aov), las =1, col="red")



# Plasmar diferencias en boxplot ------------------------------------------

boxplot(Germ$PG ~ Germ$Trat,
        col="lightblue",
        xlab = "Tratamientos Germinativos",
        ylab = "% Germinación",
        ylim=c(0,10))
text(1,4.3, "a", col="red")
text(2, 8.3, "b", col="blue")
text(3, 9.3, "b", col="blue")
text(4, 7.3, "b", col="blue")
text(5, 3.3, "a", col="red")
