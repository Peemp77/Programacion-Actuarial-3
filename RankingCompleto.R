
resultado <- "Falla"
num <- 4
ye <- c()
yo <- c()
rankingcompleto <- function(resultado, num = "mejor"){

    Estados <- c("AK","AL","AR","AZ","CA","CO","CT","DC","DE","FL","GA","GU","HI","IA","ID","IL","IN","KS","KY","LA","MA","MD","ME","MI","MN","MO","MS","MT","NC","ND","NE","NH","NJ","NM","NV","NY","OH","OK","OR","PA","PR","RI","SC","SD","TN","TX","UT","VA","VI","VT","WA","WI","WV","WY")
   
    for (foo in 1:54){
        x <- rankhospital(Estados[foo], resultado, num)
        ye <- c(x,Estados[foo])
        yo <- c(yo, ye)
    }    

yo   
}    
rankingcompleto("Ataque", 20)
