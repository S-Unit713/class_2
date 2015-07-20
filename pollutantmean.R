pollutantmean <- function(directory, pollutant, id = 1:332){
  setwd(directory)
  data.files<- list.files()
  df <-read.csv(na.omit(data.files[1]),header= TRUE,na.strings = "NA")
  id <- id+1
  for (i in id){
    newdf<-read.csv(na.omit(data.files[i]), header=TRUE,na.strings = "NA")
    df<-rbind(df,newdf)
  }
  m<- mean(df$pollutant, na.rm=TRUE)
  m
}