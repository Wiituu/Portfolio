#zad1
auta=as.data.frame(mtcars)
attach(auta)
auta %>%
  summarise( średnia = mean(mpg, na.rm=TRUE))
  mediana = median(mpg, na.rm = TRUE)
  min = min(mpg, na.rm=TRUE)
  max = max(mpg, na.rm=TRUE)
  odchylenie = sd(mpg, na.rm=TRUE)
  
auta %>%
  summarise( średnia = mean(qsec, na.rm=TRUE))
  mediana2 = median(qsec, na.rm = TRUE)
  min2 = min(qsec, na.rm=TRUE)
  max2 = max(qsec, na.rm=TRUE)
  odchylenie2 = sd(qsec, na.rm=TRUE)
mediana2
min2
max2
odchylenie2

#zad2
mtcars_filtered <-mtcars %>%
  filter(cyl> 4)

mtcars_grouped <-mtcars_filtered %>%
  group_by(cyl, am)

mtcars_stats <-mtcars_grouped %>%
  summarise(
    avg_hp = mean(hp, na.rm = TRUE),
    median_hp = median(hp, na.rm=TRUE),
    avg_mpg = mean(mpg, na.rm=TRUE)
  )

mtcars_stats_sorted <-mtcars_stats %>%
  arrange(avg_mpg)

#zad1

Zad1A <- rnorm(50, 20, 100)
Zad1B <- rnorm(50, 25, 5)

hist(Zad1A)
hist(Zad1B)
plot(Zad1A)
plot(Zad1B)
boxplot(Zad1A)
boxplot(Zad1B)
plot(Zad1A, Zad1B)

#zad3
ggplot(cars, aes(x = speed, y = dist)) + geom_point() + 
  labs(title = "Scatter Splot: Speed vs Distance",
                x = "Speed(mph)",
                y = "Stopping Distance(ft)")

ggplot(cars, aes(x = speed, y = dist)) + geom_line() + 
  labs(title = "Scatter Splot: Speed vs Distance",
       x = "Speed(mph)",
       y = "Stopping Distance(ft)")

#zad.2
ggplot(cars, aes(x = speed, y = dist)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(title = "Scatter plot with Linear Regression",
       x = "Speed (mph)",
       y = "Stopping Distance (ft)")

#zad.3
ggplot(cars, aes(x = speed, y = dist)) +
  geom_point() +
  geom_smooth(method = "lm", se = TRUE, color = "blue") +
  labs(title = "Scatter Splot",
       x = "Speed(mph)",
       y = "Stopping Distance(ft)")

#zad. 5 histogram
ggplot(cars, aes(x = speed)) +
  geom_histogram(binwidth = 4, fill = "blue", color = "black") +
  labs(title = "Histogram of Speed",
       x = "Speed (mph)",
       y = "Count")
#zad6
ggplot(cars, aes(x = speed)) +
  geom_histogram(binwidth = 2, fill = "pink", color = "black") +
  labs(title = "Histogram of Speed",
       x = "Speed (mph)",
       y = "Count")
