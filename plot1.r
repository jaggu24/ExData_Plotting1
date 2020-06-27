electricity2 = read.csv2(file = "household_power_consumption.txt", header = TRUE, na.strings = "?")
e3=subset(electricity2, Date == "1/2/2007"|Date == "2/2/2007")
# electricity2$Date = as.Date(electricity2$Date)

hist(as.integer(e3$Global_active_power), col = "blue", xlab = "Global Active Power(kilowatts)")
dev.copy(png, file = "plot1.png")
dev.off()


