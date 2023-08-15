# Loading Pokemon data from source and renaming columns
Pokemon <- read.csv("path/to/your/dataset.csv", header = TRUE)
colnames(Pokemon) <- c("#", "Name", "Type 1", "Type 2", "Total", "HP", "Attack", "Defense", "Sp.Atk", "Sp.Def", "Speed", "Generation", "Legendary")

# Creating a plot for the relationship and linear regression models
plot(Pokemon[, -c(1)])
linReg <- lm(HP ~ Sp.Atk + as.factor(Type.1), data = Pokemon)
summary(linReg)
linRegSpAtk <- lm(HP ~ Sp.Atk, data = Pokemon)
summary(linRegSpAtk)
linRegType <- lm(HP ~ as.factor(Type.1), data = Pokemon)
summary(linRegType)

with(Pokemon, plot(Sp.Atk, HP))
abline(linRegSpAtk, col = 'red', lwd = 2)

# Residual plot to check linearity
plot(linReg$residuals ~ Sp.Atk)
abline(h = 0, lty = 3)

# Residual plot to check normality using histogram
hist(linReg$residuals)

# Residual plot to check normality using qq plot
qqnorm(linReg$residuals)
qqline(linReg$residuals)
