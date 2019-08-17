data("faithful")
qqnorm(faithful$eruptions ,
       pch = 20,
       cex = 0.5,
       main = "Q-Q plot for faithful")
qqline(faithful$eruptions)