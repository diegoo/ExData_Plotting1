plot3_data <- read.table("2007-02-01_2007-02-02_data.csv", header=T, sep=',', na.strings="?")

plot3_data$datetime <- as.POSIXct(plot3_data$datetime)

png(filename="plot3.png", width=480, height=480, units="px")

legends = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

plot(plot3_data$datetime, plot3_data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")

lines(plot3_data$datetime, plot3_data$Sub_metering_2, type="l", col="red")

lines(plot3_data$datetime, plot3_data$Sub_metering_3, type="l", col="blue")

legend("topright", lty=1, lwd=1, col=c("black", "blue", "red"), legend=legends)

dev.off()