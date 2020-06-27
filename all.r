electricity2 = read.csv2(file = "household_power_consumption.txt", header = TRUE, na.strings = "?")
e3=subset(electricity2, Date == "1/2/2007"|Date == "2/2/2007")
# electricity2$Date = as.Date(electricity2$Date)

hist(as.integer(e3$Global_active_power), col = "blue", xlab = "Global Active Power(kilowatts)")
dev.copy(png, file = "plot1.png")
dev.off()

plot(as.integer(e3$Global_active_power)~c(1:nrow(e3)), main="Global_Power",type="l",col = "red", ylab = "Global_active_power(kilowatts)",xlab="minutes")
dev.copy(png, file = "plot2.png")
dev.off()

plot(as.integer(e3$Sub_metering_1)~c(1:nrow(e3)), main="Global_Power",type="l",col = "red", ylab = "Global_active_power(kilowatts)",xlab="minutes")
lines(as.integer(e3$Sub_metering_2)~c(1:nrow(e3)))
lines(as.integer(e3$Sub_metering_3)~c(1:nrow(e3)))
legend("topright",legend = c("1","2","3"))
dev.copy(png, file = "plot3.png")
dev.off()

par(mfrow = c(2,2))
plot(as.integer(e3$Global_active_power)~c(1:nrow(e3)), main="Global_Power",type="l",col = "red", ylab = "Global_active_power(kilowatts)",xlab="minutes")
plot(as.integer(e3$Voltage)~c(1:nrow(e3)), main="Voltage",type="l",col = "blue", ylab = "Voltage",xlab="minutes")
plot(as.integer(e3$Sub_metering_1)~c(1:nrow(e3)), main="Global_Power",type="l",col = "red", ylab = "Global_active_power(kilowatts)",xlab="minutes")
lines(as.integer(e3$Sub_metering_2)~c(1:nrow(e3)))
lines(as.integer(e3$Sub_metering_3)~c(1:nrow(e3)),col = "blue")
plot(as.integer(e3$Global_reactive_power)~c(1:nrow(e3)), main="Global_reactive_Power",type="l",col = "green", ylab = "Global_reactive_power(kilowatts)",xlab="minutes")
dev.copy(png, file = "plot4.png")
dev.off()
