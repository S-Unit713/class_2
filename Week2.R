add2 <- function(x,y) { 
        x + y
}
above10 <- function(x) {
        use <- x>10
        x[use]
}

above <- function(x,n){
        use <- x> n
        x[use]
}

columnmean <- function(y){
        nc<- ncol(y)
        means<- numeric(nc)
        for(i in 1:nc) { 
                means[i] <- mean(y[,i])}
        
        means
}

make.NegLogLik <- function(data, fixed =c(FALSE,FALSE)){
        params <- fixed
        function(p){
                params[!fixed]<- p 
                mu<- params[1]
                sigma<- params[2]
                a<- -0.5*length(data)*log(2*pi*sigma^2)
                b<- -0.5*sum((data-mu)^2)/(sigma^2)
                -(a+b)
        }
}