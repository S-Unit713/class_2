pollutantmean<- function(directory,pollutant,id= 1:332){
  for(i in id){
  mean(directory[id]$pollutant,na.rm=TRUE)
    id<-id+1
  }
}