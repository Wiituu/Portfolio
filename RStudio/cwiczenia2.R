#zad1 

a=matrix(1, nrow=3, ncol=2)
b=matrix(2, nrow=3, ncol=2)

sprawdzmacierz=function(a){
  if(nrow(a)==ncol(a)){
    print("Macierz Kwadratowa")
  }else{
    print("Macierz Prostokątna")
  }
}


dodajmacierz=function(a, b){
  if(nrow(a)==nrow(b)&ncol(b)==ncol(a)){
    return(a+b)
  }else{
    print("Nie można wykonać działania")
  }
}

mnozenie=function(a, b){
  if(ncol(a)==nrow(b)){
    return(a%*%b)
  }else{
    print("Nie można wykonać działania")
  }
}
trace=function(a){
  return(sum(diag(a)))
}
a1=matrix(c(4,3,1,2), nrow=2, ncol=2, byrow=T)
b1=matrix(c(-1,0,0,0,3,0,0,0,3), nrow=3, ncol=3, byrow=T)
c1=matrix(c(0,-1,2,1), nrow=2, ncol=2, byrow=T)
eigen(a1)$vectors[1]
eigen(c1)$values[1]
Im(eigen(c1)$values[1])
Re(eigen(c1)$values[1])

P=eigen(a1)$vectors
D=diag(eigen(a1)$values)
E=round(P%*%D^solve(P))
P
D
E
identical(a1, E)
potega=function(a1, U){
  return(P%*%D^U%*%solve(P))
}
potega(a1, 2)


