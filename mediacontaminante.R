mediacontaminante <- function(directorio= "specdata",contaminante= "nitrate",id = 1:332){
a1 <- numeric()
    
    for(i in id){
    a <- read.csv(paste(directorio,"/",formatC(i, width = 3,flag = "0"), ".csv", sep = "")) 
    a1 <- c(a1, a[[contaminante]])
    
    }
    
mean(a1, na.rm = TRUE)  
}
 


