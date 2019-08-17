library(datasets)
data("faithful")
plot(faithful,main="Old Faithful Eruptions",
     xlab= "Eruption length in min ",
     ylab= "Wait time in min", pch = 20 ,col="red")
hist(faithful$waiting,col = "blue",main = "Histogram",breaks = seq(from=40,to=100,by=1))

