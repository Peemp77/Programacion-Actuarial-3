n <- 100000
mens <- vector("numeric",n)
for (i in 1:n) {
    
  p <- runif(1,1,100)

    if(p<= 30){
        mens[i] <- "30%"
    } else if (p<=50){
        mens[i] <- "20%a"
    } else if (p<=70){
        mens[i] <- "20%b"
    } else if (p<=90){
        mens[i] <- "20%c"
    } else {
        mens[i] <- "10%"
    }

}

mens
table(mens)

plot(table(mens))
