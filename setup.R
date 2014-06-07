# original file format:
# Date;Time;Global_active_power;Global_reactive_power;Voltage;Global_intensity;Sub_metering_1;Sub_metering_2;Sub_metering_3
# 16/12/2006;17:24:00;4.216;0.418;234.840;18.400;0.000;1.000;17.000

download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile="household_power_consumption.zip", method="curl")

unzip("household_power_consumption.zip", "household_power_consumption.txt")

original_data <- read.table("household_power_consumption.txt", header=T, sep=';', na.strings="?", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))

data <- original_data[(original_data$Date == "1/2/2007") | (original_data$Date == "2/2/2007"),]

data$datetime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

# set 'datetime' as the first column, remove 'Date' and 'Time'
write.csv(data[c(10, 3:9)], "2007-02-01_2007-02-02_data.csv")