####################################
## Project:       1.2             ##
## Author:        Wei Chao        ##
## Last Updated:  8th June, 2014  ##
####################################

## Building on Project 1.1, add new column "DateTime" which is of POSIXlt class.
assg_data$DateTime<-paste(assg_data$Date,assg_data$Time)
assg_data$DateTime<-as.POSIXlt(assg_data$DateTime)

## Plot Global_active_power against DateTime as a png.
png(filename="plot2.png", width=480, height=480, units="px",pointsize=12)
with(assg_data,plot(DateTime,Global_active_power,type="n",xlab = "", ylab = "Global Active Power (kilowatts)"))
with(assg_data,lines(DateTime,Global_active_power,type="l"))
dev.off()