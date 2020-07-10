print("This file was created within RStudio")

print("And now it lives on GitHub")

data<-read.csv("hw1_data.csv")
dim(data)
names(data)

#Column names with missing Values
names(data)[colSums(is.na(data)) > 0]
data$Ozone

##Ozone mean calculation
x <- data$Ozone
mean(x,na.rm=TRUE)

##First R Function 
adds<-function(x,y){ x+y }
adds(3,5)

above10<-function(x){use<-x>10
                     x[use]}
above<-function(x,n=10){
                     use<-x>n
                     x[use]
                     }
##Columnmean
columnmean<-function(y){
               nc<-ncol(y)
               means<-numeric(nc)
               for(i in 1:nc){
                 means[i]<-mean(y[ ,i])
               }
               means
}
data<-read.csv("hw1_data.csv")
columnmean(data)

##Remove Null value
columnmean<-function(y,removeNA=TRUE){
  nc<-ncol(y)
  means<-numeric(nc)
  for(i in 1:nc){
    means[i]<-mean(y[ ,i],na.rm=removeNA)
  }
  means
}
data<-read.csv("hw1_data.csv")
columnmean(data)

