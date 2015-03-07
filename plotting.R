plot1 <- function(data) {
    hist(data$Global_active_power, 
         col = "red", 
         xlab = "Global Active Power (kilowatts)", 
         main = "Global Active Power") 
}

plot2 <- function(data) {
  with(data, plot(dt, Global_active_power, type = 'l', 
                     ylab = "Global Active Power (kilowatts)", xlab = "datetime"))
}

plot3 <- function(data) {
  plot(data$Sub_metering_1 ~ data$dt, type = "n", ylab = "Energy sub metering", xlab = "datetime")
  points(data$Sub_metering_1 ~ data$dt, type = "l")
  points(data$Sub_metering_2 ~ data$dt, type = "l", col = "red")
  points(data$Sub_metering_3 ~ data$dt, type = "l", col = "blue")
  legend("topright", col = c("black", "red", "blue"), 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         lty = c(1, 1, 1), 
         pt.cex = 1, cex = 0.8)
} 

plot4 <- function(data) {
  par(mfrow = c(2, 2))
  plot2(data)
  
  with(data, plot(dt, Voltage, type = 'l', 
                  ylab = "Voltage", xlab = "datetime"))
  plot3(data)
  
  with(data, plot(dt, Global_reactive_power, type = 'l', 
                  ylab = "Global Reactive Power", xlab = "datetime"))
}