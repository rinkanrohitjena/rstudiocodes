library(datasets)
library(RColorBrewer)
attach(iris)
library(MASS)
#######################
###barplot#############
#######################
#barplot(table(iris$Species,iris$Sepal.Length),col = brewer.pal(3,"Set2"))


#####################
######box plot#######
####################
boxplot(iris[,c(1,2,3,4)],col = heat.colors(3),names = c("one","two","three","four"))








####################################
####overlap od density curve #######
####################################
#dens.pw <- density(iris$Petal.Length)
#plot.window(dens.pw,
     xlab = "frequency",
     ylab = "petal width",
     main = "density curve of petal width",col=brewer.pal(3,"Set1"),lwd=4,ylim =seq(),xlim = 10
     )
#lines(density(iris$Sepal.Length))
#lines(density(iris$Sepal.Width),col=1,lwd=2)
#####################
####Q-Q plot#########
#####################



#ps=seq(0,1,length=25)
#quantile.virginica = quantile(iris$Petal.Length[iris$Species=="virginica"],probs = ps)
#qqnorm(quantile.virginica)
#qqline(quantile.virginica)
###########################
###conuntour  #############
###########################

#library(MASS)
#petal.desity = kde2d(iris$Petal.Length,iris$Petal.Width)
#contour(petal.desity)
#image(petal.desity)

####################