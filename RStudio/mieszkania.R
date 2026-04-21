attach(mieszkania)
table(dzielnica,typ.budynku)

wyniki = aov(cena ~ dzielnica + typ.budynku, data=mieszkania)
summary(wyniki)

residuals=residuals(wyniki)
shapiro.test(residuals)

qqnorm(residuals)
qqline(residuals)

LeveneTest(cena ~ dzielnica * typ.budynku, data=mieszkania)

wyniki2 = aov(cena ~ dzielnica*typ.budynku, data=mieszkania)
summary(wyniki2)

dzielnica = as.factor(dzielnica)
typ.budynku = as.factor(typ.budynku)

interaction.plot(dzielnica, typ.budynku,cena)

wyniki3 = aov(cena ~ dzielnica + typ.budynku, data=mieszkania)
summary(wyniki3)

ggplot(mieszkania, aes(x = dzielnica, y = cena, fill = typ.budynku)) + 
  geom_boxplot() + 
  labs(
    title = "Boxplot",
    x = "Dzielnica",
    y = "Typ Budynku",
    fill = "Cena"
  ) +
  theme_minimal()
