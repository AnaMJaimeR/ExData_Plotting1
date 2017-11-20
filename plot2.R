#EXPLORATORY DATA ANALYSIS COURSE PROJECT 1
#DATA SCIENCE SPECIALIZATION. JHU-COURSERA
#Week 1 Peer-graded Assignment

#Plot 2


###Set working directory###

setwd("~/COURSERA/JHU-Data Science Specialization/GIT BASH/ExData_Plotting1")

#code for reading the data
source("read_data.R")


#set 'us english' locale temporarily 
Sys.setlocale("LC_TIME","English")

#construct the "Global Active Power" plot 2
windows()
with(electric_subset,plot(Time,Global_active_power,xlab="",ylab="Global Active Power (kilowatts)",
                          type="n"))
with(electric_subset,lines(Time,Global_active_power))

#restablish my locale 
Sys.setlocale("LC_TIME","Spanish_Spain.1252")


#create the PNG file
dev.copy(png,file="plot2.png") #by default the PNG file will be created with 
                                #a width of 480 pixels and a height of 480 pixels.
dev.off()