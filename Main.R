#Live Kaggle Competition Code
# LIST OF PACKAGES TO BE USED
library(dplyr)
library(data.table)
library(dtplyr)
library(topicmodels)
library(tidytext)
library(ggplot2)
library(randomForest)
library(tm)

setwd("C:\\Users\\User\\Dropbox\\temp\\Hackathons\\kaggle\\Quora\\")
train<-read.csv(".\\Data\\train.csv")
summary(train)
head(train)

tr_Clean$Quest1 <- cleanup(tr_Clean$Quest1)
tr_Clean$Quest2 <- cleanup(tr_Clean$Quest2)
