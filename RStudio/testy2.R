#słoneczniki

A <- c(120,170,210,150,197,200,170,211,192,162,154,210,160,190,174,122)
B <- c(69,143,176,74,204,230,170,155,120,150,150,140,170,140,86)

shapiro.test(A)
shapiro.test(B)

VarTest(A, B)

t.test(A, B, var.equal = TRUE)


#Groch

liczba_sukcesow = c(85, 150)
liczba_obserwcaji = c(200, 300)
prop.test(liczba_sukcesow, liczba_obserwcaji, conf.level=0.99)

#źrenica
c3= c(0.21,0.17,0.2,0.18,0.14,0.15,0.16,0.16,0.21,0.2)
c4 = c(0.17,0.17,0.18,0.19,0.15,0.11,0.16,0.14,0.18,0.22)
roznice= c3-c4
shapiro.test(roznice)
t.test(c3,c4,paired=T)
