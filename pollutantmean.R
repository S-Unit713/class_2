pollutantmean <- function(directory, pollutant, id = 1:332){
  directory <- paste("C:/Users/sshukla/class_2",directory, sep="/") 
  setwd(directory)
  data.files<- list.files()
  newdf <- NULL
  for (i in id){
          
    df <-read.csv(data.files[i],header= TRUE,na.strings = "NA")
    newdf<-rbind(df,newdf)
  }
  
  m<- mean(newdf[,pollutant], na.rm=TRUE)
  m
}