forest =  read.csv("D://Users//bondard//Desktop//forestfireproject.csv")
##summry##
summary(forest)
##Shapiro-Wilks tests##
shapiro.test(rnorm(forest1$RH,forest1$temp))
shapiro.test(rnorm(forest1$wind,forest1$temp))
shapiro.test(rnorm(forest1$area,forest1$temp))
##boxplots##
boxplot(temp~month,forest,main="Temperature distribution by months")
boxplot(wind~month,forest,main="Wind distribution by months")
boxplot(RH~month,forest,main="RH distribution by months")
##Correlation## 
library(corrplot)
cor.test(forest$temp,forest$RH, method ="spearman")
cor.test(forest$temp,forest$wind, method ="spearman")
cor.test(forest$temp,forest$area, method ="spearman")
cor.test(forest$wind,forest$RH, method ="spearman")
cor.test(forest$RH,forest$area, method ="spearman")
cor.test(forest$wind,forest$area, method ="spearman")
corrplot(cor(forest[,c(9,10,11,13)]),method = "circle")
