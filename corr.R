corr<- function(directory, threshold= 0){
        directory <- paste("C:/Users/sshukla/class_2",directory, sep="/")        
        setwd(directory)
        data.files <- list.files()
        
        obs <- complete("specdata", 1:332)
        for(j in nrow(obs)){
                if(obs[j,][]$nobs>threshold){
                        
                        dt <- read.csv(data.files[obs$id], header= TRUE, na.strings= "NA")
                        good <- rbind(good, complete.cases(dt$date,dt$sulphate,dt$nitrate))
                                                
                }
        }
        cr <- cor(good$sulphate, good$nitrate)
        cr
}