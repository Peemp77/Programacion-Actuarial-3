
CaminataAleatoria <- function(y,x){
    
    faa <- c()
    
    for(i in 1:x){
        faa <- c(faa,y)
        v <- runif(1,0,1)
        
        if ( v <0.5 ) {
            moneda <- 1
        }  else {
            moneda <-0
        }
        
        
        if (moneda == 1) {
            y <- y - 1
        } else {
            y <- y + 1
        }  
    }
faa
}

CaminataAleatoria(0,10)
    
    
    