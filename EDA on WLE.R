library(dplyr)
library(ggplot2)

###lets get the data
url<-"https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv"
file<-download.file(url, "trainingdata.csv")

trainingdata<-read.csv("trainingdata.csv", header = TRUE)

###lets see what we've got
dim(trainingdata)
View(head(trainingdata))
table(trainingdata$classe)
plot(table(trainingdata$classe))
table(trainingdata$classe)/length(trainingdata$classe)
