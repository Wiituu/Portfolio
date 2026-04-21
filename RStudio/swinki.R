swinki = ToothGrowth
View(swinki)

table(dose, supp)

attach(swinki)
swinki$dose=as.factor(swinki$dose)
swyniki= aov(len ~ supp * dose, data = swinki)
summary(swyniki)

shapiro.test(residuals(swyniki))

qqnorm(residuals(swyniki))
qqline(residuals(swyniki))

LeveneTest(len ~ supp * dose, data=swinki)

swyniki2 = aov(len ~ supp * dose, data=swinki)
summary(swyniki2)
interaction.plot(supp,dose,len)

swyniki3 = aov(len ~ supp + dose, data=swinki)
summary(swyniki3)

ggplot(swinki, aes(x = supp, y = len, fill = dose)) + 
  geom_boxplot() + 
  labs(
    title = "Boxplot",
    x = "Len",
    y = "Dose",
    fill = "Supp"
  ) +
  theme_minimal()
