# -------------------------------------
# Coursera Data Science
# 04 Exploratory Data Analysis
# Project 1
# -------------------------------------
# Plot 3

# this code assumes, that the cleaned dataset (filename = EPCdata.RData) is in the working directory
load("./EPCdata.RData")

png(file = "./plot3.png", width = 480, heigh = 480)
with(data, plot(datetime, Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering (watt-hour)"))
with(data, lines(datetime, Sub_metering_1, col = "black"))
with(data, lines(datetime, Sub_metering_2, col = "red"))
with(data, lines(datetime, Sub_metering_3, col = "blue"))
legend("topright", lty = 1, col = c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
