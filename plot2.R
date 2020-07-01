

png(filename = "plot2.png", width = 480, height = 480, units = "px")

with(projectd, plot( Global_active_power, type = "l", xaxt = "n", ylab = "Global Active Power(kilowatts)", xlab = ""))
axis( side = 1,at = c(0,1450,2900),labels = c("Thursday", "Friday", "Saturday"))

dev.off()
