###################   Exploratory Data Analysis     ########################
###################   Course Project 1              ########################
# plot3.R
data3 <- read.table("household_power_consumption.txt", sep=";", header=T, quote= "", strip.white=TRUE, stringsAsFactors = F, na.strings= "?")

# Subsetting original data  
data3 <- subset(data3, (data3$Date == "1/2/2007" | data3$Date== "2/2/2007")) 
# change the date format
data3$Date <- as.Date(data3$Date, format = "%d/%m/%Y")

data3$DateTime <- as.POSIXct(paste(data3$Date, data3$Time))

# Building Plot3 diagram

png("plot3.png", width = 480, height = 480)

plot(data3$DateTime, data3$Sub_metering_1, type="l", ylab= "Energy sub metering", xlab="")

lines(data3$DateTime, data3$Sub_metering_2, type="l", col="red")

lines(data3$DateTime, data3$Sub_metering_3, type="l", col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"))

dev.off()
