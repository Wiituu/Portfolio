x <- c(10.8, 11.7, 10.3, 11.2, 10, 10.8, 10.6, 10.7, 9.8, 11.5)
y <- c(6.7, 7.3, 6, 6.6, 5.4, 6, 5.8, 6.4, 6.1, 6.9)

correlation <- cor(x, y, method = "pearson")
correlation

cor.test(x, y)

model <- lm(y ~ x)
summary(model)

plot(x, y,
     main = "Regresja liniowa y względem x",
     xlab = "Długość kłosa",
     ylab = "Masa ziarniaków",
     pch = 19)

abline(model, lwd = 2)
