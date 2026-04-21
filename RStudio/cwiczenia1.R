#zad1
sin(2*pi)
cos(3/4)
tan(pi)
log10(100)
log(15)
log(1/7, 7)
exp(3)
64^(1/3) #pierwiastek 3 stopnia z 64

#zad2
a=c(1:10) #wektor 1-10
a
sum(a)

#zad3
x=seq(from=2,to=20,by=2)
x
length(x)
y=seq(from=20,to=2,by=-2)
y
length(y)
x*x
x^2
x*t(x)
t(x)*x
norma=sqrt(sum(x*x))
norma
t(x)%*%y
x%*%t(y)

#zad4
z=seq(from=5,to=10,length.out=13)
z

#zad5
z1=rep(1:2, 5)
z2=rep(3:4, 5)
z1+4 #niegit sposób
z1+rep(4,10)#git sposób
z3=z2[-10]
z3
z4=z1+z3
z4
z5=z1[z1>1]
z5

#zad6
A=matrix(c(2,3,0,1,-1,2,1,1,-1),nrow=3,ncol=3,byrow=T)
A
A^2
A%*%A
t(A) #transponowanie
solve(A) #odwrotność macierzy
det(A) #wyznacznik macierzy
b=c(A[3, ]) #wektor składający się z 3 wierszu macierzy A
b

#zad7
A=matrix(c(1,2,3,4,5,6),nrow=3,ncol=2,byrow=T)
B=matrix(c(1,0,0,0,1,0,0,0,1),nrow=3,ncol=3,byrow=T)
C=matrix(c(1,0,0,-2),nrow=2,ncol=2,byrow=T)
D=matrix(c(1,5,6,0,2,7,0,0,4),nrow=3,ncol=3,byrow=T)
E=matrix(c(3,4,5,-1,2,-3,2,6,2),nrow=3,ncol=3,byrow=T)
A
B
C
D
E
dim(A)
A%*%t(A)
2*B
D%*%D
E%*%(solve(D))
round(ginv(E),2)
solve(t(A)%*%A-C)

F=cbind(A,c(1))
F

G=rbind(A,c(-1,-2))
G

H=rbind(cbind(A,c(0)),c(0))
H

L=D[-c(2),-c(3)]
L

D[2, ]=D[2, ]+D[1, ]*(-2)
D

