#Zad1

prop.test(270,400)

#zad.
x <- c(33.1, 33.1, 32.9, 32.0, 33.6, 30.0, 30.5, 31.5, 32.5, 34.0, 33.4, 32.4, 31.8, 32.7, 32.8)
n <- length(x)

mean_x <- mean(x)
sd_x <- sd(x)
var_x <- var(x)

cat("Średnia =", mean_x, "\n")
cat("Odchylenie standardowe =", sd_x, "\n")
cat("Wariancja =", var_x, "\n\n")

cat("===== 95% PRZEDZIAŁ UFNOŚCI DLA ŚREDNIEJ (t-Student) =====\n")
print(t.test(x, conf.level = 0.95))

cat("\n===== 95% PRZEDZIAŁ UFNOŚCI DLA WARIANCJI (Chi^2) =====\n")
alpha <- 0.05
chi_low <- qchisq(alpha/2, df = n - 1)
chi_high <- qchisq(1 - alpha/2, df = n - 1)
lower_var <- (n - 1) * var_x / chi_high
upper_var <- (n - 1) * var_x / chi_low
cat("(", lower_var, ";", upper_var, ")\n\n")

print(shapiro.test(x))

hist(x, freq = FALSE, main = "Histogram zawartości tłuszczu \nz krzywą normalną",
     xlab = "Zawartość tłuszczu (%)", ylab = "Gęstość")

xx <- seq(min(x) - 0.5, max(x) + 0.5, length.out = 200)
yy_norm <- dnorm(xx, mean = mean_x, sd = sd_x)
lines(xx, yy_norm, lwd = 2)

lines(density(x), lwd = 2, lty = 2)

legend("topright", legend = c("Krzywa normalna", "Gęstość jądrowa"),
       lty = c(1,2), lwd = c(2,2), bty = "n")


#Zad3
x <- c(20.3, 21, 23, 22.2, 21.2, 20.1, 23.2, 20.5, 23, 23.5, 19.8, 20.7, 23.4, 19.6, 22)
n <- length(x)

mean_x <- mean(x)
sd_x <- sd(x)

cat("Średnia =", mean_x, "\n")
cat("Odchylenie standardowe próby =", sd_x, "\n\n")

cat("==== PRZEDZIAŁY UFNOŚCI 99% ====\n")

print(t.test(x, conf.level = 0.99))

alpha <- 0.01
chi_low <- qchisq(alpha/2, df = n-1)
chi_high <- qchisq(1 - alpha/2, df = n-1)

lower_sigma_99 <- sqrt((n - 1) * sd_x^2 / chi_high)
upper_sigma_99 <- sqrt((n - 1) * sd_x^2 / chi_low)

cat("Przedział ufności 99% dla odchylenia standardowego:\n")
cat("(", lower_sigma_99, ";", upper_sigma_99, ")\n\n")

cat("==== PRZEDZIAŁY UFNOŚCI 90% ====\n")

print(t.test(x, conf.level = 0.90))

alpha <- 0.10
chi_low <- qchisq(alpha/2, df = n-1)
chi_high <- qchisq(1 - alpha/2, df = n-1)

lower_sigma_90 <- sqrt((n - 1) * sd_x^2 / chi_high)
upper_sigma_90 <- sqrt((n - 1) * sd_x^2 / chi_low)

cat("Przedział ufności 90% dla odchylenia standardowego:\n")
cat("(", lower_sigma_90, ";", upper_sigma_90, ")\n")


#Zad2
A <- c(7.19, 5.21, 4.38, 10.99, 8.2, 4.5, 5.78, 4.63, 11.4, 9.62, 6.47, 8.09, 6.17, 6.05)
B <- c(4.42, 4.81, 9.3, 5.89, 6.24, 6.49, 8.46, 4.97, 4.01, 9.35, 5.12, 4.55, 3.53, 3.43)

mean_A <- mean(A)
mean_B <- mean(B)

var_A <- var(A)
var_B <- var(B)

t_90 <- qt(0.95, 13)
n <- length(A)

se_A <- sd(A)/sqrt(n)
ci_mean_A <- c(mean_A - t_90 * se_A, mean_A + t_90 * se_A)

se_B <- sd(B)/sqrt(n)
ci_mean_B <- c(mean_B - t_90 * se_B, mean_B + t_90 * se_B)

alpha_99 <- 0.01
chi_low_99 <- qchisq(1 - alpha_99/2, n-1)
chi_high_99 <- qchisq(alpha_99/2, n-1)

ci_var_A <- c((n-1)*var_A/chi_low_99, (n-1)*var_A/chi_high_99)
ci_var_B <- c((n-1)*var_B/chi_low_99, (n-1)*var_B/chi_high_99)

cat("Rasa A:", round(mean_A, 4), "\n")
cat("Rasa B:", round(mean_B, 4), "\n\n")

cat("b) Wariancje:\n")
cat("Rasa A:", round(var_A, 4), "\n")
cat("Rasa B:", round(var_B, 4), "\n\n")

cat("c) Przedziały ufności dla średniej (90%):\n")
cat("Rasa A: [", round(ci_mean_A[1], 4), ";", round(ci_mean_A[2], 4), "]\n")
cat("Rasa B: [", round(ci_mean_B[1], 4), ";", round(ci_mean_B[2], 4), "]\n\n")

cat("d) Przedziały ufności dla wariancji (99%):\n")
cat("Rasa A: [", round(ci_var_A[1], 4), ";", round(ci_var_A[2], 4), "]\n")
cat("Rasa B: [", round(ci_var_B[1], 4), ";", round(ci_var_B[2], 4), "]\n")

par(mfrow=c(1,2))
hist(A, main="Rasa A", xlab="Masa ciała", col="lightblue")
hist(B, main="Rasa B", xlab="Masa ciała", col="lightgreen")







