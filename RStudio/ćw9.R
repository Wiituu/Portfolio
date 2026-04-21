#zad2 mięso

zad1=c(33.1, 33.1, 32.9, 32.0, 33.6, 30.0, 30.5, 31.5, 32.5, 34.0, 33.4, 32.4, 31.8, 32.7, 32.8)
shapiro.test(zad1)
zad1=as.data.frame(zad1)

ggplot(zad1, aes(sample = zad1)) + 
  stat_qq() + 
  stat_qq_line(color = "red", size = 1) +
  labs(title = "QQ-plot dla średnich arytmetycznych", 
       x = "Kwantyle teoretyczne", 
       y = "Kwantyle danych") + 
  theme_minimal()

t.test(zad1, mu = 30, alternative = "two.sided", conf.level = 0.95)

VarTest(zad1$zad1, sigma.squared = 1.45, alternative = "two.sided", conf.level = 0.95)

#zad witaminy
zad2=c(16, 22, 21, 20, 23, 21, 19, 15, 15, 23, 17, 20, 24, 18, 22, 16, 15, 18)
shapiro.test(zad2)
t.test(zad2, mu=19, alternative = "greater", conf.level= 0.95)
hist(zad2)
VarTest(zad2, sigma.squared = 9, alternative = "two.sided", conf.level = 0.95)
VarTest(zad2,conf.level = 0.99)

#zad3 róże
attach(cw3)
t.test(cw3$dlugosc, mu=86, alternative = "two.sided", conf.level=0.95)
shapiro.test(cw3$dlugosc)

#zad4 jajka
prop.test(16,1200,0.02, alternative="less", conf.level=0.95)

#zad5 świnki morskie
guinea_p = as.data.frame(ToothGrowth)
View(guinea_p)

guinea_p_OJ = subset(guinea_p, supp == "OJ")
guinea_p_VC = subset(guinea_p, supp == "VC")

hist(guinea_p_OJ$len)
hist(guinea_p_VC$len)

shapiro.test(guinea_p_OJ$len)
shapiro.test(guinea_p_VC$len)

t.test(guinea_p_OJ$len, conf.level = 0.99)
t.test(guinea_p_VC$len, conf.level = 0.99)

t.test(guinea_p_OJ$len, mu = 20, alternative="less", conf.level=0.95)
t.test(guinea_p_VC$len, mu = 20, alternative="less", conf.level=0.95)

VarTest(guinea_p_VC$len, sigma.squared = 65, alternative="less", conf.level=0.95)

x = sum(guinea_p$len > 25)
prop.test(x, 60, 0.25, alternative="greater")





