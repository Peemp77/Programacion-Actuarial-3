z <- 5
a <- 0

faa <- c()

while (z>=3 && z<=10) {
    a <- a + 1 
    faa <- c(faa,z)
    
    v <- runif(1,0,1)
    
       if ( v <0.5 ) {
           moneda <- 1
       }  else {
           moneda <-0
       }
    
    
       if (moneda == 1) {
           z <- z - 1
       } else {
           z <- z + 1
    }  
}
faa

plot(faa, type="b",lwd = 2)


CaminataAleatoria <- function(y,x){
foo <- c()

    for(i in 1:x){
  foo <- c(foo,y)
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
foo
}

CaminataAleatoria(100,5)


