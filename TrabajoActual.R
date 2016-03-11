x <- c(F, 3L, 94.5, 2+3i, "a")
x
#Listas de Objetos

y<- list(F, 3L, 94.5, 2 + 3i, "a")
y

#Cada elemento de la lista puede ser de
#diferente clase

#Matrices
?matrix

z <- matrix(nrow=2, ncol = 3)
z
dim(z)
attributes(z)
attributes(y)
z1 <- matrix(1:6,2,3,T)
z1
z2 <- matrix(1:10,2,5)
z2
x <- 1:5


#Creación de una Matriz al forzar
#su dimensión
x <- 1:10
x
dim(x) <- c(2,5)
x

# cbind y rbind
a <- 1:5
b <- 11:15
c <- 21:25
a
b
c
cbind(a,b,c)
rbind(a,b,c)
r <- rbind(a,b,c,a,b,c,c)
r

y <- 1:5
z <- factor(c("si","si","no","si"))
z
y1 <- factor(c("azul","amarillo","rojo","verde","azul"))
y1
table(z)
table(y1)
plot(z)
plot(y1)
unclass(z)
unclass(y1)
?factor

z <- factor(c("si","si","no","si"), levels = c("si","no"))
z
R <- c(1,NA,2,3)
R
is.na(R)
R <- c(1,2,NA,NaN,4)
R
is.na(R)
is.nan(R)

# Data Frames
X <- data.frame(foo=1:4, bar=c(T,F,T,T))
X
row.names(X)
?data.frame
row.names(X) <- c("perro","gato","burro","mono")
row.names(X)
X
plot(X)
NROW(X)
ncol(X)

# Para modificar el nombre de las columnas
x <- 1:3
names(x) <- c("foo","bar","norf")
x

#Nombres en listas
x1 <- list(a=1,b=2,c=3)
x1

#nombres en matrices
m <- matrix(1:4,nrow = 2,ncol = 2)
m
dimnames(m) <- list(c("a","b"),c("c","d"))
m
?read.table

inicio <- read.table("data.txt", nrows = 100)

data <- read.csv(file = "table.csv")
head(data)
tail(data,10)

y <- data.frame(a=1,b = "a")
dput(y)
dput(y,file = "y.R")

#con la siguiente instrucción eliminamos de
#la memoria a y
rm(y)

#si referente en la memoria, recuperamos el objeto
#y a partir del archivo que guardamos

nueva.y <- dget(file = "y.R")
nueva.y

#probemos ahora dump
x <- "Programacion III"
y <- data.frame(a="1",b="a")
dump(c("x","y"),file = "data.R")
source("data.R")


## cONEXIONES
con <- url("http://www.fcfm.buap.mx/","r")
readLines(con,10)

#creamosun vector

x <- c("a","b","c","c","d","e")
x
x[1]
x[2]
x[1:4]
x[x>="c"]
u <- x =="c"
u
x[u]
x[!u]
# Extracción de una lista con []
x <- list(foo=1:4,bar=0.6)
x
x[1]; class(x[1])

x[[1]]; class(x[[1]])
x$foo
x["foo"]

x <- list(foo=1:4,bar=0.6,baz="Hola")
nombre <- "bar"
x[nombre]
x[[nombre]]
x$nombre

# Extracción de un caractér
x[[foo]]

#Se pueden extraer elementos de los conjuntos extraidos
x <- list(a=list(10,12,14), b=list(3.14,2.81))
x[[c(1,3)]]
x[[1]][[3]]
x[c(1,3)]  
x <- matrix(1:6,2,3)
x
x1 <- list(aadvark=1:5)
x1$a
x1
airquality

?dget

x <- airquality
dput(x)
dput(x,file = "air.R")
dget(file = "air.R")
complete.cases(dget(file = "air.R"))

airquality
complete.cases(airquality)
datosCompletos <- airquality[complete.cases(airquality),]
datosCompletos
dput(datosCompletos,file = "air.R")
nrow(datosCompletos)
dim(datosCompletos)
dim(datosCompletos)[1]
sum(complete.cases(airquality))

contador <- 0

while (contador <= 10) {
    print(contador)
    contador <- contador + 1
}

while (contador > -10) {
    print(contador)
    contador <- contador + 1
    if (contador> 10000) {
        print(paste("el contador ya alcanzó el valor",contador))
        break
        
    }
}


z <- 5
a <- 0


while (z>=3 && z<=10) {
a <- a + 1 
foo <- c(foo,z)

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
foo


