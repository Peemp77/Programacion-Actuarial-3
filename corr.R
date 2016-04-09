
completos <- function(directorio = "specdata/", id = 1:332){
    foo <- c()
    
    for(i in id){
        bar <- read.csv(paste(directorio,formatC(i, width = 3,flag = "0"), ".csv", sep = ""))
        
        b <- complete.cases(bar)
        foo <- c(sum(b),foo)
    }
    
    data.frame(foo)    
}

corr <- function(directorio="specdata/", horizonte=0) {
    
    perro = completos()
    kor = perro[perro["nobs"] > horizonte, ]$id
    correlacion = numeric()
    for (i in kor) {
        
        nread = read.csv(paste(directorio, formatC(i, width = 3, flag = "0"),".csv", sep = ""))
        perro2 = nread[complete.cases(newRead), ]
        correlacion = c(correlacion, cor(perro2$sulfate, dff$nitrate))
    }
    return(correlacion)
}
corr(,1)
 