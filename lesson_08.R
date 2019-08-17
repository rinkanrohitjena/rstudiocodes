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
