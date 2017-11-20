#EXPLORATORY DATA ANALYSIS COURSE PROJECT 1
#DATA SCIENCE SPECIALIZATION. JHU-COURSERA
#Week 1 Peer-graded Assignment

#Plot 1


###Set working directory###

setwd("~/COURSERA/JHU-Data Science Specialization/GIT BASH/ExData_Plotting1")

#code for reading the data
#the "read_data.R" file is avaliable in this repository and it contains the
#complete code used to download and unzip the data, and to create the
#"electric_subset" dataset used here
source("read_data.R")

#construct the "Global Active Power" plot 1
windows()
with(electric_subset,hist(Global_active_power,main="Global Active Power",
                          col="red", xlab = "Global Active Power (kilowatts)"))

#create the PNG file
dev.copy(png,file="plot1.png") #by default the PNG file will be created with 
                               #a width of 480 pixels and a height of 480 pixels.
dev.off()