library(lubridate)

source("download_data.R")

print("Plotting data to plot1.png")
png("plot1.png")
hist(subData$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()