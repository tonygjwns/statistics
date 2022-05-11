#read table
data<-read.table("cdc.txt",header=T)
#read csv
ames<-read.csv("ames.csv",header=T)
#view data
View(data)

#head(data)
#column of data
data$weight
