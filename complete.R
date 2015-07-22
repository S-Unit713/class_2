complete <- function(directory, id= 1:332){
  directory <- paste("C:/Users/sshukla/class_2",directory, sep="/")        
  setwd(directory)
  data.files<- list.files()
  m<-NULL
  for (i in id){
    
    df<-read.csv(data.files[i], header=TRUE,na.strings = "NA")
    good <- complete.cases(df$Date,df$sulfate,df$nitrate)
    nobs<-nrow(df[good,][])
    
    m <- rbind(m, nobs)
  }
  m<- cbind(id, as.numeric(m)) 
  colnames(m)<- c("id","nobs")
  data.frame(m)
}

