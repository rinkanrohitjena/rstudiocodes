library(datasets)
data("chickwts")
require(stats); require(graphics)
boxplot(weight ~ feed, data = chickwts, col = "lightgray",
        main = "Chickwts data", ylab = "Weight in grams",
        xlab="Type of Feed")
results = aov(weight ~ feed, data = chickwts)
summary(results)
results = aov(weight ~ feed, data = chickwts)
TukeyHSD(results, conf.level = 0.95)