#EXPLORATORY DATA ANALYSIS COURSE PROJECT 1
#DATA SCIENCE SPECIALIZATION. JHU-COURSERA
#Week 1 Peer-graded Assignment

#Plot 1


###Set working directory###

setwd("~/COURSERA/JHU-Data Science Specialization/GIT BASH/ExData_Plotting1")

#code for reading the data
source("read_data.R")

#construct the "Global Active Power" plot 1
windows()
with(electric_subset,hist(Global_active_power,main="Global Active Power",
                          col="red", xlab = "Global Active Power (kilowatts)"))

#create the PNG file
dev.copy(png,file="plot1.png") #by default the PNG file will be created with 
                               #a width of 480 pixels and a height of 480 pixels.
dev.off()