####################################
## Project:       1.3             ##
## Author:        Wei Chao        ##
## Last Updated:  8th June, 2014  ##
####################################

## Building on Projects 1.1 & 1.2, plot Sub-meterings against DateTime as a png.
png(filename="plot3.png", width=480, height=480, units="px",pointsize=12)
with(assg_data,plot(DateTime,Sub_metering_1,type="n",xlab = "", ylab = "Energy sub metering"))
with(assg_data,lines(DateTime,Sub_metering_1,type="l"))
with(assg_data,lines(DateTime,Sub_metering_2,type="l",col="red"))
with(assg_data,lines(DateTime,Sub_metering_3,type="l",col="blue"))
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1), col=c("black","red","blue"))
dev.off()