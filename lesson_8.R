library(RColorBrewer)


times <- (0:59)
counts <- c(
  49,
  51,
  50,
  85,
  47,
  61,
  29,
  29,
  32,
  21,
  36,
  38,
  30,
  27,
  24,
  34,
  38,
  37,
  24,
  32,
  26,
  23,
  27,
  22,
  19,
  10,
  10,
  12,
  13,
  8,
  12,
  5,
  6,
  6,
  1,
  11,
  2,
  4,
  2,
  1,
  3,
  0,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1
)
visits <- rep.int(times, counts)
mean.age <- function(n) {
  trials = 1000
  my.samples <- matrix(sample(visits, size = n * trials,
                              replace = TRUE), trials)
  means <- apply(my.samples, 1, mean)
  means
}
par(mfrow = c(1, 2))
hist(mean.age(1), main = "Mean of 1 Visit", xlab = "Number of Visits")
hist(visits, main = "ER Visits Data", xlab = "Number of Visits")

par(mfrow = c(2, 3))
MA1 <- mean.age(1)
MA2 <- mean.age(2)
MA10 <- mean.age(10)
MA20 <- mean.age(20)
MA100 <- mean.age(100)
MA200 <- mean.age(200)
hist(MA1, xlim = c(0, 60),col=brewer.pal(4,"Set1"))
hist(MA2, xlim = c(0, 60),col=brewer.pal(4,"Set1"))
hist(MA10, xlim = c(0, 60),col=brewer.pal(4,"Set1"))
hist(MA20, xlim = c(0, 60),col=brewer.pal(4,"Set1"))
hist(MA100, xlim = c(0, 60),col=brewer.pal(4,"Set1"))
hist(MA200, xlim = c(0, 60),col=brewer.pal(4,"Set1"))

vars <- data.frame(
  n = c(1, 2, 10, 20, 100, 200),
  variance =
    c(
      var(MA1),
      var(MA2),
      var(MA10),
      var(MA20),
      var(MA100),
      var(MA200)
    )
)
plot(vars$n, vars$variance)
par(mfrow = c(2, 3))
qqnorm(MA1,col=brewer.pal(3,"Set1"))
qqnorm(MA2,col=brewer.pal(3,"Set1"))
qqnorm(MA10,col=brewer.pal(3,"Set1"))
qqnorm(MA20,col=brewer.pal(3,"Set1"))
qqnorm(MA100,col=brewer.pal(3,"Set1"))
qqnorm(MA200,col=brewer.pal(3,"Set1"))