dane2cz = c(4.87,5.06,5.97,5.53,4.77,5.65,6.09,5.44,5.18,
            5.98,6.16,5.64,5.51,5.79,5.94,4.92,5.26,5.76,
            5.25,5.43,5.64,5.78,5.42,4.91,5.96,5.98,5.55,
            5.39,5.79,6.27,4.95,5.70,5.49,5.62,5.02,5.44,
            6.08,5.40,4.93,5.60,5.79,5.56,5.49,5.81,6.18)

dawki=rep(c(rep("d1",3),rep("d2",3),rep("d3",3),rep("d4",3),rep("d5",3)),3)
odmiany = rep(c("k", "m", "p"), 15)
danezad2cz = cbind.data.frame(dane2cz, dawki, odmiany)
View(danezad2cz)


wyniki = aov(dane2cz ~ dawki + odmiany, data = danezad2cz)
residuals = residuals(wyniki)
shapiro.test(residuals)
qqnorm(residuals)
qqline(residuals, col = "red")

leveneTest(dane2cz ~ dawki * odmiany, data = danezad2cz)

wyniki2 = aov(dane2cz ~ odmiany + dawki, data = danezad2cz)
summary(wyniki2)


ggplot(danezad2cz, aes(x = dawki, y = dane2cz, fill = odmiany)) + 
  geom_boxplot() + 
  labs(
    title = "Boxplot",
      x = "Dawka nawożenia",
      y = "Wartość(dane2cz)",
      fill = "Odmiany"
    ) +
    theme_minimal()

danezad2cz %>%
  group_by(dawki, odmiany) %>%
  summarise(srednia = mean(dane2cz))

wyniki3 = aov(dane2cz ~ odmiany : dawki, data = danezad2cz)
summary(wyniki3)


dawki = as.factor(dawki)
odmiany = as.factor(odmiany)

interaction.plot(dawki, odmiany, danezad2cz$dane2cz)

residuals = residuals(wyniki2)

shapiro.test(residuals)
