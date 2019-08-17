library(MASS)
data(Pima.tr)
head(Pima.tr)
pima = Pima.tr
summary(pima)
hist(pima$bp)
plot(density(pima$bp),
     lwd = 2,
     col = "red",
     main = "blood pressure ")
pairs(pima[1:4])
pairs(pima[5:8])
round(cor(pima[1:7]), 2)
lm1 <- lm(bmi ~ npreg + glu + bp + skin + ped + age + type, data =pima)
summary(lm1)
lm2 <- lm(bmi ~ npreg + glu + bp + skin + ped + age + type, data =pima)
drop1(lm2,test = "F")
lm3 <- lm(bmi ~ glu + bp + skin + ped + age + type, data =pima)
drop1(lm3,test = "F")
lm4 <- lm(bmi ~  bp + skin + ped + age + type, data =pima)
drop1(lm4,test = "F")
lm5 <- lm(bmi ~  skin + ped + age + type, data =pima)
drop1(lm5,test = "F")
lm6 <- lm(bmi ~  skin + ped+ type, data =pima)
drop1(lm6,test = "F")
lm.glu <-lm(glu~bmi +npreg +bp +skin +ped+ age+type,data=pima )
summary(lm.glu)
#continue with dro1 as age,type will go 

plot(lm.glu$fitted.values,lm.glu$residuals,pch=20)
qqnorm(lm.glu$residuals)
qqline(lm.glu$residuals)
lm.last <- step(lm(bmi~ . ,data = pima))
summary(lm.last)