#zad1
#a)
a=seq(2, 20, by=2)
a
sum(a)
#b)
b=c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
prod(b)


#zad2
IloczynSkalarny= sum(t(a)%*%b)
IloczynSkalarny

norma_b=sqrt(sum(b^2))
norma_b

#zad3
A=cbind(a, b)
A

t(a)
wynik=a%*%t(a)
wynik


#zad4

B=matrix(c(3, 2, 1, 0, 2, 5, 2, 1, 1, 2, 4, 2, 0, 1, 2, 7), nrow=4, ncol=4, byrow=T)
B
M=B%*%t(B)
czy_syme=all.equal(M, t(M))
czy_syme
#macierz jest symetryczna
det(B)
eigen(B)
solve(B)

#zad5

analyze_matrix <- function(B, tol = 1e-10) {
  cat("=== Analiza macierzy B ===\n\n")
  
  
  if (nrow(B) != ncol(B)) {
    stop("Macierz nie jest kwadratowa. Macierz odwrotna nie istnieje.")
  }
  cat("Macierz jest kwadratowa.\n")
  
  
  is_symmetric=all.equal(B, t(B), tolerance = tol)
  cat("Czy macierz jest symetryczna?", ifelse(is_symmetric, "TAK", "NIE"), "\n")
  
  
  eigen_B=eigen(B)
  eigenvalues=eigen_B$values
  eigenvectors=eigen_B$vectors
  
  cat("\nWartości własne:\n", paste(round(eigenvalues, 5), collapse = ", "), "\n")
  
  
  if (any(abs(eigenvalues) < tol)) {
    cat("\nUWAGA: Jedna z wartości własnych jest bliska zeru. Macierz może być nieodwracalna!\n")
  } else {
    cat("\nWszystkie wartości własne są niezerowe. Macierz jest odwracalna.\n")
  }
  
  
  if (det(B) == 0) {
    cat("\nMacierz nie jest odwracalna (wyznacznik = 0).\n")
    return(invisible(NULL))
  }
  
  B_inv=solve(B)
  cat("\nMacierz odwrotna B^-1:\n")
  print(B_inv)
  
  
  I=diag(nrow(B))
  error=max(abs(B_inv %*% B - I))
  cat("\nMaksymalny błąd ||B^-1 * B - I||:", error, "\n")
  
  if (error < tol) {
    cat("Macierz odwrotna jest poprawna.\n")
  } else {
    cat("UWAGA: Macierz odwrotna może być niepoprawna!\n")
  }
  

  invisible(list(
    matrix = B,
    is_symmetric = is_symmetric,
    eigenvalues = eigenvalues,
    eigenvectors = eigenvectors,
    inverse = B_inv,
    error = error
  ))
}



analyze_matrix(B)

#zad6
C=B[-3, -4]
C
wektor=c(4, 2, 1)
C[, 3]=C[, 3] + wektor 
C_trans=t(C)
roznica=C - 2 * C_trans
slad=sum(diag(roznica))
wynik=slad^2
print("Macierz C po przekształceniach:")
print(C)
cat("\nMacierz C - 2C^T:\n")
print(roznica)
cat("\nŚlad (tr):", slad, "\n")
cat("Wynik końcowy (tr^2):", wynik, "\n")
