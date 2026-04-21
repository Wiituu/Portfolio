musz = c(155, 150, 151, 152, 150)
muszplus = c(139, 130, 132, 135, 137)
piw = c(92, 90, 92, 99, 93)
gali = c(91, 90, 91, 99 , 101)
shapiro.test(musz)
shapiro.test(muszplus)
shapiro.test(piw)
shapiro.test(gali)

bartlett.test(list(musz, muszplus, piw, gali))


daneAll = c(musz, muszplus, piw, gali)
grupy = factor(c(rep("Muszynianka", length(musz)),
                     rep("Muszynianka Plus", length(muszplus)),
                         rep("Piwniczanka", length(piw)),
                             rep("Galicjanka", length(gali))))
data_anova=data.frame(value = daneAll, group = grupy)
data_anova

anova_result = aov(value ~ group, data = data_anova)
summary(anova_result)

TukeyHSD(anova_result)
