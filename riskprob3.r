

# Funciones internas

dice <- function(k, n){
  attack <- sample(1:6, min(k, 3))
  deff <- sample(1:6, min(k, 2))
  return(list(attack=attack, deff=deff))
}

fight <- function(a, b){
  if (a == 3 && b == 2){
    if(sort(tiradas$attack,T)[1] > sort(tiradas$deff,T)[1]){
      n <- n - 1}
    if (sort(tiradas$attack,T)[1] <= sort(tiradas$deff,T)[1]) {
      k <- k - 1}
    if (sort(tiradas$attack,T)[2] > sort(tiradas$deff,T)[2]) {
      n <- n - 1}
    if (sort(tiradas$attack,T)[2]<= sort(tiradas$deff,T)[2]){
      k <- k - 1}
  }
  
  if (a == 3 && b == 1){
    if(sort(tiradas$attack,T)[1] > sort(tiradas$deff,T)[1]){
      n <- n - 1}
    if(sort(tiradas$attack,T)[1] <= sort(tiradas$deff,T)[1]) {
      k <- k - 1}
  }
  
  if (a == 2 && b == 2){
    if(sort(tiradas$attack,T)[1] > sort(tiradas$deff,T)[1]){
      n <- n - 1}
    if (sort(tiradas$attack,T)[1] <= sort(tiradas$deff,T)[1]) {
      k <- k - 1}
    if (sort(tiradas$attack,T)[2] > sort(tiradas$deff,T)[2]) {
      n <- n - 1}
    if (sort(tiradas$attack,T)[2]<= sort(tiradas$deff,T)[2]){
      k <- k - 1}
  }
  
  if (a == 1 && b == 2){
    if(sort(tiradas$attack,T)[1] > sort(tiradas$deff,T)[1]){
      n <- n - 1}
    if (sort(tiradas$attack,T)[1] <= sort(tiradas$deff,T)[1]) {
      k <- k - 1}
  }
  
  if (a == 1 && b == 1){
    if(sort(tiradas$attack,T)[1] > sort(tiradas$deff,T)[1]){
      n <- n - 1}
    if (sort(tiradas$attack,T)[1] <= sort(tiradas$deff,T)[1]) {
      k <- k - 1}
  }
  return(c(k, n))
}



#Función general

risk <- function(...){
  k <- readline(prompt="Enter atacking troops: ")
  n <- readline(prompt="Enter deffending troops: ")
  k <- as.numeric(k)
  n <- as.numeric(n)
  dice <- function(k, n){
    attack <- sample(1:6, min(k, 3))
    deff <- sample(1:6, min(k, 2))
    return(list(attack=attack, deff=deff))
  }
  fight <- function(a, b){
    if (a == 3 && b == 2){
      if(sort(tiradas$attack,T)[1] > sort(tiradas$deff,T)[1]){
        n <- n - 1}
      if (sort(tiradas$attack,T)[1] <= sort(tiradas$deff,T)[1]) {
        k <- k - 1}
      if (sort(tiradas$attack,T)[2] > sort(tiradas$deff,T)[2]) {
        n <- n - 1}
      if (sort(tiradas$attack,T)[2]<= sort(tiradas$deff,T)[2]){
        k <- k - 1}
    }
    
    if (a == 3 && b == 1){
      if(sort(tiradas$attack,T)[1] > sort(tiradas$deff,T)[1]){
        n <- n - 1}
      if(sort(tiradas$attack,T)[1] <= sort(tiradas$deff,T)[1]) {
        k <- k - 1}
    }
    
    if (a == 2 && b == 2){
      if(sort(tiradas$attack,T)[1] > sort(tiradas$deff,T)[1]){
        n <- n - 1}
      if (sort(tiradas$attack,T)[1] <= sort(tiradas$deff,T)[1]) {
        k <- k - 1}
      if (sort(tiradas$attack,T)[2] > sort(tiradas$deff,T)[2]) {
        n <- n - 1}
      if (sort(tiradas$attack,T)[2]<= sort(tiradas$deff,T)[2]){
        k <- k - 1}
    }
    
    if (a == 1 && b == 2){
      if(sort(tiradas$attack,T)[1] > sort(tiradas$deff,T)[1]){
        n <- n - 1}
      if (sort(tiradas$attack,T)[1] <= sort(tiradas$deff,T)[1]) {
        k <- k - 1}
    }
    
    if (a == 1 && b == 1){
      if(sort(tiradas$attack,T)[1] > sort(tiradas$deff,T)[1]){
        n <- n - 1}
      if (sort(tiradas$attack,T)[1] <= sort(tiradas$deff,T)[1]) {
        k <- k - 1}
    }
    return(c(k, n))
  }
  while (k > 1 | n > 0){
    at <- k
    dt <- n
    tiradas <- dice(at, dt)     #generar dos listas con las tiradas
    a <- min(k, 3)
    b <- min(n, 2)
    fight(a, b)               #restar tropas a la función
  }
  return(c(k, n))
}


risk(20, 20)









