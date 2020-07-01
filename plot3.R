

png(filename = "plot3.png", width = 480, height = 480, units = "px")

with(projectd, plot(Sub_metering_1, type = "l", col="black", xaxt = "n", ylab = "", xlab = ""))
lines(projectd$Sub_metering_2, col = "red")
lines(projectd$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black","red","blue"), lwd = 2, cex = 1)
title(ylab = "Energy sub metering")
l <- length(projectd$Sub_metering_1)
axis(side = 1, at = c(0, l/2, l), labels = c("Thursday", "Friday", "Saturday"))

dev.off()
