# -------------------------------------
# Coursera Data Science
# 04 Exploratory Data Analysis
# Project 1
# -------------------------------------
# Plot 2

# this code assumes, that the cleaned dataset (filename = EPCdata.RData) is in the working directory
load("./EPCdata.RData")

png(file = "./plot2.png", width = 480, heigh = 480)
with(data, plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
dev.off()
