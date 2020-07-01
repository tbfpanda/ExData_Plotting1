

png(filename = "plot4.png", width = 480, height = 480, units = "px")
par(mfrow = c(2,2))
l1 <- length(projectd$Global_active_power)
with(projectd, plot( Global_active_power, type = "l",xaxt = "n", ylab = "Global Active Power(kilowatts)", xlab = ""))
axis( side = 1,at = c(0,l1/2,l1),labels = c("Thursday", "Friday", "Saturday"))

with(projectd, plot( Voltage, type = "l",xaxt = "n", ylab = "Voltage", xlab = "datetime"))
axis( side = 1,at = c(0,l1/2,l1),labels = c("Thursday", "Friday", "Saturday"))

with(projectd, plot(Sub_metering_1, type = "l", col="black", xaxt = "n", ylab = "", xlab = ""))
lines(projectd$Sub_metering_2, col = "red")
lines(projectd$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black","red","blue"), lwd = 2, cex = 1)
title(ylab = "Energy sub metering")
l <- length(projectd$Sub_metering_1)
axis(side = 1, at = c(0, l/2, l), labels = c("Thursday", "Friday", "Saturday"))

with(projectd, plot( Global_reactive_power, type = "l",xaxt = "n", xlab = "datetime"))
axis( side = 1,at = c(0,l1/2,l1),labels = c("Thursday", "Friday", "Saturday"))
dev.off()
