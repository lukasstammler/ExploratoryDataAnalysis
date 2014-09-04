# -------------------------------------
# Coursera Data Science
# 04 Exploratory Data Analysis
# Project 1
# -------------------------------------
# Plot 1

# this code assumes, that the cleaned dataset (filename = EPCdata.RData) is in the working directory
load("./EPCdata.RData")

png(file = "./plot1.png", width = 480, heigh = 480)
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
