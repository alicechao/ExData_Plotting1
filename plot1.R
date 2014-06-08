####################################
## Project:       1.1             ##
## Author:        Wei Chao        ##
## Last Updated:  7th June, 2014  ##
####################################

## Create a new file that only contains data from dates 2007-02-01 & 2007-02-02.
hpc <- read.csv("C:/Work/Training/Data Science Specialization/04 Exploratory Data Analysis/Project 1/household_power_consumption.txt", sep=";")
hpc$Date<-as.Date(hpc$Date,"%d/%m/%Y") # Convert Date column to Date format

assg_data1<-subset(hpc,hpc$Date=="2007-02-01")
assg_data2<-subset(hpc,hpc$Date=="2007-02-02")
assg_data<-rbind(assg_data1,assg_data2)

## Extra steps I did to save and use the new file from hereonforth (optional)
write.csv(assg_data,file="assg_data.csv",row.names=FALSE) 
assg_data <- read.csv("C:/Work/Training/Data Science Specialization/04 Exploratory Data Analysis/Project 1/assg_data.csv")

## Plot the histogram for Global_active_power  
hist(assg_data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")