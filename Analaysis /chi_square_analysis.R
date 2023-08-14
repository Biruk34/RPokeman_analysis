# Import dataset
pokemon <- read.csv(file.choose(), header = T)

# Tidyverse package
library(tidyverse)

pokemon2 <- select(pokemon, Legendary, Generation)

# Levels
pokemon2$Generation <- as.factor(pokemon$Generation)
levels(pokemon2$Generation)

# Reshaping generation variable into two categories
pokemon2$Generation = fct_collapse(pokemon2$Generation, FirstGen = c("1", "2", "3"), LastGen = c("4", "5", "6"), NULL = "")

# Contingency table for variables
pokemon_table <- table(pokemon2$Generation, pokemon2$Legendary)
Pokemon_table
