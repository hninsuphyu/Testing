##Part 1
pollutantmean<-function(directory,pollutant,id=1:332){
  #create a list of files
  filesD<-list.files(directory,full.names = TRUE)
  #create an empty data frame
  dat <- data.frame()
  
  #loop through the list of files until id is found
  for(i in id){
    #read in the file
    temp<- read.csv(filesD[i],header=TRUE)
    #add files to the main data frame
    dat<-rbind(dat,temp)
  }
  #find the mean of the pollutant, make sure you remove NA values
  return(mean(dat[,pollutant],na.rm = TRUE))
  
}
pollutantmean("specdata", "sulfate", 1:10)
##[1] 4.064128
pollutantmean("specdata", "nitrate", 70:72)
##1.706047
pollutantmean("specdata", "sulfate", 34)
##[1] 1.477143
pollutantmean("specdata", "nitrate")
##[1] 1.702932
