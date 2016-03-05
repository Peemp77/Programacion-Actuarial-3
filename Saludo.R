p <- runif(1,1,100)
p
if(1<p & p<30){
  t <- "Hola"
} else if (31<p & p<50){
  t <- "¿Qué onda?"
} else if (51<p & p<60){
  t <- "¿Qué pedo wey?"
} else if (61<p & p<80 ){
  t <- "¿Qué pex?"
} else if (81<p & p<100){
  t <- "Quiubo"
}
t

for(i in 1:10){
    print(i)
}

for(p in c(2,55,9)){
    print(p)
}

x <- c("a","b","c","d")
for(i in 1:4){
     print(x[i])
}

for(i in seq_along(x)){
    print(x[i])
}
for(i in x){
    print(i)
}

x <- matrix(1:6,2,3)
for(i in seq_len(nrow(x))){
    for(j in seq_len(ncol(x))){
        print(x[i,j])
    }
}

x <- matrix(1:6,2,3,T)
for(i in seq_len(nrow(x))){
    for(j in seq_len(ncol(x))){
        print(x[i,j])
    }
}






