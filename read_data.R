#EXPLORATORY DATA ANALYSIS COURSE PROJECT 1
#DATA SCIENCE SPECIALIZATION. JHU-COURSERA
#Week 1 Peer-graded Assignment

#This assignment uses data from the UC Irvine Machine Learning Repository, a popular 
#repository for machine learning datasets. In particular, we will be using the 
#“Individual household electric power consumption Data Set” 

###Set working directory###

setwd("~/COURSERA/JHU-Data Science Specialization/GIT BASH/ExData_Plotting1")

###Download the data###

url<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url,destfile = "electric.zip",method="wininet",mode="wb")
#Unzip the files
unzip("electric.zip")

#Read the data, labeling the variables
electric<-read.table("household_power_consumption.txt", sep = ";", dec=".", na.strings = "?",
                     header = TRUE)

#Convert the Date to Date class
electric$Date<-as.Date(electric$Date,format="%d/%m/%Y")

#Convert time to Time class
electric$Time<-paste(electric$Date,electric$Time)
electric$Time<-strptime(electric$Time,format ="%Y-%m-%d %H:%M:%S")

#subset the data from the dates 2007-02-01 and 2007-02-02
electric_subset<-subset(electric,Date=="2007-02-01"|Date=="2007-02-02")

rm(electric)



