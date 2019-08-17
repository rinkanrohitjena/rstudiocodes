library(carData)
data("Salaries")
cor(Salaries$yrs.since.phd, Salaries$salary)
cor(Salaries$yrs.since.phd, Salaries$yrs.service)
sd.phd <- sd(Salaries$yrs.since.phd)
sd.ser <- sd (Salaries$yrs.service)
cor_xy <-
  cov(Salaries$yrs.since.phd, Salaries$yrs.service) / (sd.phd * sd.ser)
cor_xy
plot(Salaries$yrs.since.phd,Salaries$yrs.service,pch=15,col=3)
abline(v=mean(Salaries$yrs.since.phd),col=2,lwd=4)