electricity2 = read.csv2(file = "household_power_consumption.txt", header = TRUE, na.strings = "?")
e3=subset(electricity2, Date == "1/2/2007"|Date == "2/2/2007")
# electricity2$Date = as.Date(electricity2$Date)

plot(as.integer(e3$Sub_metering_1)~c(1:nrow(e3)), main="Global_Power",type="l",col = "red", ylab = "Global_active_power(kilowatts)",xlab="minutes")
lines(as.integer(e3$Sub_metering_2)~c(1:nrow(e3)))
lines(as.integer(e3$Sub_metering_3)~c(1:nrow(e3)))
legend("topright",legend = c("1","2","3"))
dev.copy(png, file = "plot3.png")
dev.off()