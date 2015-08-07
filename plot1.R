
###################   Exploratory Data Analysis     ##################################
###################   Course Project 1              ########################
# plot1.R

### Read Data ############
datafile <- "household_power_consumption.txt"
data <- read.table(datafile, sep = ";", header = T, na.strings = "?")

#### Data Cleaning #############
# by increasing one variable
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subSetData$Global_active_power)

# Building Plot1 diagram
png("plot1.png", width=480, height=480)

hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")

dev.off()
