plot4_data <- read.table("2007-02-01_2007-02-02_data.csv", header=T, sep=',', na.strings="?")

plot4_data$datetime <- as.POSIXct(plot3_data$datetime)

png(filename="plot4.png", width=480, height=480, units="px")

# mfrow: layout: c(n_rows, n_columns) 
par(mfrow=c(2, 2))

plot(plot4_data$datetime, plot4_data$Global_active_power, xlab="", ylab="Global Active Power", type="l")

plot(plot4_data$datetime, plot4_data$Voltage, xlab="datetime", ylab="Voltage", type="l")

legends = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

plot(plot4_data$datetime, plot4_data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")

lines(plot4_data$datetime, plot4_data$Sub_metering_2, type="l", col="red")

lines(plot4_data$datetime, plot4_data$Sub_metering_3, type="l", col="blue")

legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=legends, bty="n")

plot(plot4_data$datetime, plot4_data$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")        

dev.off()