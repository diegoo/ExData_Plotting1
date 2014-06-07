plot1_data <- read.table("2007-02-01_2007-02-02_data.csv", header=T, sep=',', na.strings="?")

png(filename="plot1.png", width=480, height=480, units="px")

hist(plot1_data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")

dev.off()