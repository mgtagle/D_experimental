# MAGT
# ANOVA
# 18/05/2023

# Experimento ganancia en peso (GP) basado en diferentes Dietas 
# Niveles de factor: 4 (die1, die2, die3, die4)

die1 <- c(2.4, 2.2, 3.4, 1.6)
die2 <- c(2.2, 1.9, 1.7, 2.1)
die3 <- c(3.3, 1.3, 2.8, 2.1)
die4 <- c(1.6, 2.5, 1.4, 2.4)

GP <- c(2.4, 2.2, 3.4, 1.6, 2.2, 1.9, 1.7, 2.1,
        3.3, 1.3, 2.8, 2.1, 1.6, 2.5, 1.4, 2.4)
Trat <- gl(4,4,16, labels = c("die1", "die2", "die3", "die4"))
Bloq <- gl(4,4,16, labels = c("Bajo", "Normal", "SP", "OB"))

Dietas <- data.frame(Trat, Bloq, GP)

boxplot(Dietas$GP ~ Dietas$Trat,
        col = "salmon", 
        xlab = "Dietas",
        ylab = "Ganancia en peso (Kg)")

tapply(Dietas$GP, Dietas$Trat, var)

fligner.test(Dietas$GP, Dietas$Trat)
bartlett.test(Dietas$GP, Dietas$Trat)

diet.aov <- aov(Dietas$GP ~ Dietas$Trat)
summary(diet.aov)

write.table(Dietas, "C:/Repositorio_GIT/D_experimental/Scripts/Dietas.csv",
            sep = ",")

Dietas2 <- read.csv("Scripts/Dietas.csv", header = T)
Dietas2$Trat <- as.factor(Dietas2$Trat)
Dietas2$Bloq <- as.factor(Dietas2$Bloq)

Di2.aov <- aov(Dietas2$GP ~ Dietas2$Trat + Dietas2$Bloq)
summary(Di2.aov)
