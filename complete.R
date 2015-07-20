complete <- function(directory, id= 1:332){
  setwd(directory)
  data.files<- list.files()
  m<-NULL
  for (i in id){
    
    df<-read.csv(data.files[i], header=TRUE,na.strings = "NA")
    good <- complete.cases(df$Date,df$sulfate,df$nitrate)
    nobs<-nrow(df[good,][])
    
  }
  nobs
}

