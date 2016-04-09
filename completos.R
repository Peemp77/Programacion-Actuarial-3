completos <- function(directorio = "specdata", id = 1:332){
nobs <- c()
    
    for(i in id){
    bar <- read.csv(paste(directorio,"/",formatC(i, width = 3,flag = "0"), ".csv", sep = ""))
    
    b <- complete.cases(bar)
    nobs <- c(nobs, sum(b))
    }
    
data.frame(id, nobs)    
}

completos("specdata/",10:11)


