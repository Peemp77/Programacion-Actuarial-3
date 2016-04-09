

corr <- function(directorio="specdata", horizonte=0) {
    
    data <- completos()
    kor <- data[data["nobs"] > horizonte,]$id
    data1 <- numeric()
    
        for (i in kor) {
            nr <- read.csv(paste(directorio,"/", formatC(i, width = 3, flag = "0"),".csv", sep = "")) 
            nr1<- nr[complete.cases(nr),]
            data1 <- c(data1 ,cor(nr1$sulfate,nr1$nitrate))    
        }                            
        
data1
}


