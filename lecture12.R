library(datasets)
data("chickwts")
summary(chickwts)
meat = chickwts[chickwts$feed == "meatmeal", 1]
horse = chickwts[chickwts$feed == "horsebean", 1]
boxplot(meat, horse)
qqplot(meat, horse)
qqline(meat, horse)
abline(a = 0, b = 1, col = 2)
qqplot(
  meat,
  horse,
  xlim = c(100, 420),
  xlab = "Meatmeal",
  ylab
  = "Horsebean",
  ylim = c(100, 420),
  pch = 20,
  cex = 2
)
abline(a = 0,
       b = 1,
       lwd = 3,
       col = "red")


plot(
  x = c(meat, horse),
  y = c(rep(0, length(meat)),
        rep(1, length(horse))),
  pch = "*",
  ylim = c(-1, 2),
  xlab = "weights",
  ylab = "",
  cex = 5
  
)
abline(h = 1)
abline(h = 0)
mean.meat = mean(meat)
mean.horse = mean(horse)
sd.meat = sd(meat) / sqrt(length(meat))
sd.horse = sd(horse) / sqrt(length(horse))
T.stat = (mean.meat - mean.horse) / sqrt(sd.meat ^ 2 + sd.horse ^ 2)
T.stat
t.test(meat,horse)


with(chickwts,plot(paired(chickwts$weight,chickwts$feed),
                     type="McNeil"))