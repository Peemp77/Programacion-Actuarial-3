##TASA DE MORTALIDADPOR 30 DIAS
#11,17,23 
#Hospital 30-Day Death (Mortality) Rates from 

mejor <- function(estado, resultado){

    outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")     
    s <- split(outcome,outcome$State)
    t <- s[[estado]]
    t1 <- nrow(t)
    t2 <- s$Hospital.Name
    r <- t$Hospital.Name
    u <- t[[resultado]]
    u1 <- sort(as.numeric(u))
    
    if (resultado == "Ataque"){
        q <- 11
    } else if (resultado == "Falla"){
        q <- 17
    } else if (resultado == "Neumonia"){
        q <- 23    
    }

       
    for(i in 1:t1){
    p <- u[i]
    
        if (p == u1[1]){
            v <- ""
            v <- r[i]
            
        }
    }

print(v)   
}

mejor("MD","Neumonia")


