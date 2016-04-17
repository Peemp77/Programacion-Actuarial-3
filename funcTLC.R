#Teorema Límite Central

TLC <- function(ndatos = 100 ,nrep = 100, funcR = "runif"){

    b <- sapply(lapply(rep(ndatos,nrep), funcR), mean)
    hist(b)
}
 
TLC(1000,1000,rexp)
