corr<- function(directory, threshold= 0){
        directory <- paste("C:/Users/sshukla/class_2",directory, sep="/")        
        setwd(directory)
        data.files <- list.files()
        df <- NULL
        
        obs <- complete("specdata", 1:332)
        for(j in 1:nrow(obs)){
                if(obs[j,2] > threshold){
                        
                        dt <- read.csv(data.files[j], header= TRUE, na.strings= "NA")
                        good <- complete.cases(dt$date,dt$sulphate,dt$nitrate)
                        df <- rbind(df,na.omit(dt[good,][]))
                }
        }
        cr <- vector('numeric', nrow(df))
        for(i in 1:nrow(df)){
                
                cr[i] <-cor(df[i,2],df[i,3], use="complete.obs")
        }
        
        cr
}