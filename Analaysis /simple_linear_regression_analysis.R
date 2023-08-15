# Importing Pokemon dataset
pok <- read.csv(file.choose(), header = T)

# Basic relationship plot
par(mar = c(1, 1, 1, 1))
plot(pok$Sp..Atk ~ pok$Attack)

# Install ggplot2 package for advanced visualization
install.packages("ggplot2")
library(ggplot2)
ggplot(data = pok) +
  geom_point(mapping = aes(x = Sp..Atk, y = Attack, color = "red"))

# Quantify the strength of the relationship using cor
cor(pok$Attack, pok$Sp..Atk)

# Linear regression
reg.out <- lm(Attack ~ Sp..Atk, data = pok)
summary(reg.out)

# Visualize the model with data
plot(pok$Attack ~ pok$Sp..Atk)
abline(reg.out)

# Residual plot to check linearity
plot(reg.out$residuals ~ pok$Sp..Atk)
abline(h = 0, lty = 3)

# Residual plot to check normality using histogram
hist(reg.out$residuals)

# Residual plot to check normality using qq plot
qqnorm(reg.out$residuals)
qqline(reg.out$residuals)
