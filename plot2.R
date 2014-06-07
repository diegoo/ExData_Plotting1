plot2_data <- read.table("2007-02-01_2007-02-02_data.csv", header=T, sep=',', na.strings="?")

plot2_data$datetime <- as.POSIXct(plot2_data$datetime)

png(filename="plot2.png", width=480, height=480, units="px")

plot(plot2_data$datetime, plot2_data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()