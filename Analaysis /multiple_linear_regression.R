# Import the Pokemon Data and print summary
Poke <- read.csv(file.choose(), header = T)
summary(Poke)

# Create the linear regression models and lines
linearModel <- lm(Poke$HP ~ Poke$Attack + Poke$Defense)
summary(linearModel)
linearModelAtk <- lm(Poke$HP ~ Poke$Attack)
summary(linearModelAtk)
linearModelDef <- lm(Poke$HP ~ Poke$Defense)
summary(linearModelDef)

with(Poke, plot(Poke$Attack, Poke$HP, xlab = 'Attack', ylab = 'HP'))
abline(linearModelAtk, col = 'red', lwd = 2)
with(Poke, plot(Poke$Defense, Poke$HP, xlab = 'Defense', ylab = 'HP'))
abline(linearModelDef, col = 'red', lwd = 2)
