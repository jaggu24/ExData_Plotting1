electricity2 = read.csv2(file = "household_power_consumption.txt", header = TRUE, na.strings = "?")
e3=subset(electricity2, Date == "1/2/2007"|Date == "2/2/2007")
# electricity2$Date = as.Date(electricity2$Date)

plot(as.integer(e3$Global_active_power)~c(1:nrow(e3)), main="Global_Power",type="l",col = "red", ylab = "Global_active_power(kilowatts)",xlab="minutes")
dev.copy(png, file = "plot2.png")
dev.off()