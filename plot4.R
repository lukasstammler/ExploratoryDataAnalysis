# -------------------------------------
# Coursera Data Science
# 04 Exploratory Data Analysis
# Project 1
# -------------------------------------
# Plot 4

# this code assumes, that the cleaned dataset (filename = EPCdata.RData) is in the working directory
load("./EPCdata.RData")

png(file = "./plot4.png", width = 480, heigh = 480) # init file
par(mfrow = c(2, 2)) # 4 panels filled by rows

## 1st Plot = Plot 2
with(data, plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power"))

## 2nd Plot
with(data, plot(datetime, Voltage, type = "l", xlab = "datetime", ylab = "Voltage"))

# 3rd Plot = Plot 3
with(data, plot(datetime, Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering"))
with(data, lines(datetime, Sub_metering_1, col = "black"))
with(data, lines(datetime, Sub_metering_2, col = "red"))
with(data, lines(datetime, Sub_metering_3, col = "blue"))
legend("topright", lty = 1, col = c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")

# 4th Plot
with(data, plot(datetime, Global_reactive_power, type = "l"))
dev.off()