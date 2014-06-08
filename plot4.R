####################################
## Project:       1.4             ##
## Author:        Wei Chao        ##
## Last Updated:  8th June, 2014  ##
####################################

## Building on Projects 1.1, 1.2, & 1.3, create a 2x2 multiple plots that contain:
## Global_active_power against DateTime, Voltage against Datetime, Sub-meterings
## against DateTime, and Global_reactive_power against DateTime.
png(filename="plot4.png", width=480, height=480, units="px",pointsize=12)

attach(assg_data)
par(mfrow=c(2,2))

plot(DateTime,Global_active_power,type="n",xlab = "", ylab = "Global Active Power (kilowatts)")
lines(DateTime,Global_active_power,type="l")

plot(DateTime,Voltage,type="n",xlab = "datetime", ylab = "Voltage")
lines(DateTime,Voltage,type="l")

plot(DateTime,Sub_metering_1,type="n",xlab = "", ylab = "Energy sub metering")
lines(DateTime,Sub_metering_1,type="l")
lines(DateTime,Sub_metering_2,type="l",col="red")
lines(DateTime,Sub_metering_3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1), col=c("black","red","blue"))

plot(DateTime,Global_reactive_power,type="n",xlab = "datetime", ylab = "Global_reactive_power")
lines(DateTime,Global_reactive_power,type="l")

detach(assg_data)
dev.off()