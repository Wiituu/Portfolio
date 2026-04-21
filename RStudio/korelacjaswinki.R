attach(daneDoKol1)

model1 = lm(tooth~body, data = daneDoKol1)
reszta = residuals(model1)

cor(daneDoKol1)
cor(daneDoKol1, method = "spearman")


shapiro.test(reszta)

cor.test(daneDoKol1$body, daneDoKol1$tooth, method = "pearson")

rcorr(as.matrix(daneDoKol1))

summary(model1)



ggplot(data = daneDoKol1, aes(x = body, y = tooth)) +
  geom_point() +
  geom_smooth(method = "lm", se = TRUE, color = "blue") +
  labs(title = "Regresja Liniowa - długość zębów w zależności od długości ciała",
       x = "Długość ciała",
       y = "Długość zębów") +
  theme_minimal()
