#RANKHOSPITAL

rankhospital <- function(estado, resultado, num = "mejor"){
    
    outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")     
    s <- split(outcome,outcome$State)
    t <- s[[estado]]
    t1 <- nrow(t)
    t2 <- s$Hospital.Name
    r <- t$Hospital.Name
    u <- t[[resultado]]
    u1 <- sort(as.numeric(u))
    
    if (resultado == "Ataque") {
        q <- 11
    } else if (resultado == "Falla") {
        q <- 17
    } else if (resultado == "Neumonia") {
        q <- 23    
    }
    
    if (num == "mejor") {
        a <- 1
    } else if (num == "peor") {
        u1 <- sort(as.numeric(u), decreasing = T)
        a <- 1
    } else {
        a <- num
    }
    
    for(i in 1:t1){
        p <- u[i]
        
        if (p == u1[a]){
            v <- ""
            v <- r[i]
            
        }
    }
    
print(v)   
}
rankhospital("TX", "Falla", "mejor")
