library(dplyr)
library(ggplot2)

###lets get the data
url<-"https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv"
file<-download.file(url, "trainingdata.csv")

trainingdata<-read.csv("trainingdata.csv", header = TRUE)

###and now the test data but never look at it...
url1<-"https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv"
download.file(url1, "testdata.csv")

testdata<-read.csv("testdata.csv", header=TRUE)


###lets see what we've got
dim(trainingdata)
View(head(trainingdata))
table(trainingdata$classe)
plot(table(trainingdata$classe))
table(trainingdata$classe)/length(trainingdata$classe)
