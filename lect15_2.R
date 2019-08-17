library(MASS)
data(Pima.tr)
head(Pima.tr)
library(RColorBrewer)
pima = Pima.tr
lm3 <- lm(glu ~ bmi+npreg+bp+skin+ped+age+type, data=pima)
plot(lm3$fitted.values, pima$glu,pch=20,col=brewer.pal(2,"Set1"))
abline(lm3,col="red")
predict(lm3) #Compare to predicted value
lm.finalmodel= step(lm(glu~.,data = pima))
summary(lm.finalmodel)