#EXPLORATORY DATA ANALYSIS COURSE PROJECT 1
#DATA SCIENCE SPECIALIZATION. JHU-COURSERA
#Week 1 Peer-graded Assignment

#Plot 3


###Set working directory###

setwd("~/COURSERA/JHU-Data Science Specialization/GIT BASH/ExData_Plotting1")

#code for reading the data
source("read_data.R")


#set 'us english' locale temporarily 
Sys.setlocale("LC_TIME","English")

#construct the "Global Active Power" plot 2
windows()
par(mar=c(4,6,2,2))
with(electric_subset,plot(Time,Sub_metering_1,xlab="",
                          ylab="Energy sub metering",type="n"))

#subsets by colors
with(electric_subset,lines(Time,Sub_metering_1,col="grey40",lwd=1.8))
with(electric_subset,lines(Time,Sub_metering_2,col="red",lwd=1.8))
with(electric_subset,lines(Time,Sub_metering_3,col="blue",lwd=1.8))

#legend
legend("topright",col=c("grey40","red","blue"),lty=1,
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex =0.9)

#restablish my locale 
Sys.setlocale("LC_TIME","Spanish_Spain.1252")


#create the PNG file
dev.copy(png,file="plot3.png") #by default the PNG file will be created with 
                                #a width of 480 pixels and a height of 480 pixels.
dev.off()