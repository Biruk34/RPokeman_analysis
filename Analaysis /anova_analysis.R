# Loading required packages
library(tibble)
library(tidyverse)
library(ggpubr)
library(car)
library(pwr)
library(effectsize)
library(dplyr)
library(ggplot2)
library(graphics)

# Identify variables
PokemonTable <- Pokemon %>%
  select(2, 7, 13)

# Summary Table
summary <- matrix(c(sum(PokemonTable$Legendary == "TRUE"), mean(PokemonTable$Attack[PokemonTable$Legendary == "TRUE"]), sd(PokemonTable$Attack[PokemonTable$Legendary == "TRUE"]), sum(PokemonTable$Legendary == "FALSE"), mean(PokemonTable$Attack[PokemonTable$Legendary == "FALSE"]), sd(PokemonTable$Attack[PokemonTable$Legendary == "FALSE"])), byrow = TRUE, ncol = 3)
colnames(summary) <- c("Sample Size", "Mean", "Standard Deviation")
rownames(summary) <- c("Legendary", "Non-Legendary")
summary

# Boxplot creation for visualization
L <- c(PokemonTable$Attack[PokemonTable$Legendary == "TRUE"])
NL <- c(PokemonTable$Attack[PokemonTable$Legendary == "FALSE"])
rownames(summary) <- c("Legendary", "Non-Legendary")
Legendary_Status <- c("Legendary", "Non-Legendary")
boxplot(L, NL, names = Legendary_Status, horizontal = TRUE, main = "Legendary and Non-Legendary Pokemon with their Attack Power", xlab = "Attack Power", ylab = "Pokemon Rarity Status")

# QQ plots Checking normality and homogeneity
leveneTest(Attack ~ Legendary, PokemonTable, center = mean)
ggqqplot(PokemonTable$Attack)
ggqqplot(L)
ggqqplot(NL)

# Hypothesis and Null Hypothesis
# H0: muLegendary = muNonLegendary
# HA: muLegendary =/= muNonLegendary

# ANOVA Test
model <- aov(formula = Attack ~ as.factor(Legendary), data = PokemonTable)
model
summary(model)
