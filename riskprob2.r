## RISK PROBABILITY. GAME OF RISK


# Una primera función, que determina 

#Introduce k y n
#Función "dice", para tirada
# Función "fight", para tropas muertas.
#Repetimos. Bucle while




risk <- function(...){
  attack.t <- readline(prompt="Enter atacking troops: ")
  deff.t <- readline(prompt="Enter deffending troops: ")
  k <- attack.t
  n <- deff.t
  while (k >1|n>0 ){dice(k, n); fight(attack, deff); }
  return(list(attack.t=attack.t, deff.t=deff.t))
}






risk <- function(...){
  attack.t <- readline(prompt="Enter atacking troops: ")
  deff.t <- readline(prompt="Enter deffending troops: ")
  k <- attack.t
  n <- deff.t
  while (k >1|n>0 ){
    tiradas <- dice(k,n)
    fight(tiradas[attack], tiradas[deff])
  }
  return(k, n)
}



risk()


k <- 10
n <- 10







#Funciones

dice <- function (k, n) {
  if (k > 3 && n > 2){
    a <- 3
    b <- 2
    attack <- sample(1:6, a)
    deff <- sample(1:6, b)
  }
  if (k <= 3 && n > 2){
    a <- k
    b <- 2
    attack <- sample(1:6, a)
    deff <- sample(1:6, b)
  }
  if (k > 3 && n <= 2){
    a <- 3
    b <- n
    attack <- sample(1:6, a)
    deff <- sample(1:6, b)
  }
  if (k <= 3 && n <= 2){
    a <- k
    b <- n
    attack <- sample(1:6, a)
    deff <- sample(1:6, b)
  }
  return(list(attack=attack, deff=deff))
}

fight <- function(a, b){
  if (a == 3 && b == 2){
    if(sort(attack,T)[1] > sort(deff,T)[1]){
      n <- n - 1}
    if (sort(attack,T)[1] <= sort(deff,T)[1]) {
      k <- k - 1}
    if (sort(attack,T)[2] > sort(deff,T)[2]) {
      n <- n - 1}
    if (sort(attack,T)[2]<= sort(deff,T)[2]){
      k <- k - 1}
  }
  
  if (a == 3 && b == 1){
    if(sort(attack,T)[1] > sort(deff,T)[1]){
      n <- n - 1}
    if(sort(attack,T)[1] <= sort(deff,T)[1]) {
      k <- k - 1}
  }
  
  if (a == 2 && b == 2){
    if(sort(attack,T)[1] > sort(deff,T)[1]){
      n <- n - 1}
    if (sort(attack,T)[1] <= sort(deff,T)[1]) {
      k <- k - 1}
    if (sort(attack,T)[2] > sort(deff,T)[2]) {
      n <- n - 1}
    if (sort(attack,T)[2]<= sort(deff,T)[2]){
      k <- k - 1}
  }
  
  if (a == 1 && b == 2){
    if(sort(attack,T)[1] > sort(deff,T)[1]){
      n <- n - 1}
    if (sort(attack,T)[1] <= sort(deff,T)[1]) {
      k <- k - 1}
  }
  
  if (a == 1 && b == 1){
    if(sort(attack,T)[1] > sort(deff,T)[1]){
      n <- n - 1}
    if (sort(attack,T)[1] <= sort(deff,T)[1]) {
      k <- k - 1}
  }
  return(c(k, n))
}


