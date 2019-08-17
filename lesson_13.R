rainfall = c(3.07,3.55,3.90,4.38,
             4.79,5.30,5.42,5.99,6.45,6.77)
wheat = c(78,82,85,91,92,96,97,104,111,119)
summary(cbind(rainfall, wheat))
plot(rainfall,wheat,main = "scatter plot of rainfall vs wheat grow ")
wheat.model= lm(wheat~rainfall)
abline(wheat.model)
wheat.lm = lm(wheat~rainfall)
plot(wheat.lm$fitted.values,wheat.lm$residuals,
     main = "Residuals vs. Fitted Values",
     xlab = "Fitted Wheat Values", ylab = "Residuals")
abline(h=0, col="red")