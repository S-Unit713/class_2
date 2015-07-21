corr<- function(directory, threshold= 0){
        directory <- paste("C:/Users/sshukla/class_2",directory, sep="/")        
        setwd(directory)
        data.files <- list.files()
        good <- NULL
        cr <- NULL
        obs <- complete("specdata", 1:332)
        for(j in 1:nrow(obs)){
                if(obs[j,2] > threshold){
                        
                        dt <- read.csv(data.files[j], header= TRUE, na.strings= "NA")
                        good <- complete.cases(dt$date,dt$sulphate,dt$nitrate)
                        df <- dt[good,][]
                        cr <- list(cr, cor(as.numeric(df[,3]), as.numeric(df[,4])))                                                
                }
        }
        
        cr
}