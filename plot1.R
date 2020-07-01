

png(filename = "plot1.png", width = 480, height = 480, units = "px")

projectd %>% with(hist(Global_active_power, xlab = "Global active power(kilowatts)", main = "Global active power", col = "red"))

dev.off()
