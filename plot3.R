source("download_data.R")

print("Plotting data to file plot3.png")
png("plot3.png")
plot(subData$Sub_metering_1 ~ subData$dt, type = "n", ylab = "Energy sub metering", xlab = "")
points(subData$Sub_metering_1 ~ subData$dt, type = "l")
points(subData$Sub_metering_2 ~ subData$dt, type = "l", col = "red")
points(subData$Sub_metering_3 ~ subData$dt, type = "l", col = "blue")
legend("topright", col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = c(1, 1, 1), 
       pt.cex = 1, cex = 0.8)
dev.off()