x = c(2, 3, 5, 6, 7, 8, 9, 10, 13)
y = c(58, 75, 71, 77, 80, 80, 88, 95, 96)
plot(
  x,
  y ,
  main = "Relation between study and score ",
  xlab = "no of hours",
  ylab = "score of marks",
  pch = 20,
  col = 3
)
abline(
  v = mean(x),
  h = mean(y),
  pch = 20 ,
  lwd = 2 ,
  col = 2
)
cov(x, y)
cor(x, y)
round(cor(x, y), 3)
