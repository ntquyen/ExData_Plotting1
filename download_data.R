data <- read.table("household_power_consumption.txt", na.strings = "?", header = TRUE, sep = ";")

head(data)
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

fromDate <- as.Date("2007-02-01")
toDate <- as.Date("2007-02-02")
subData <- data[data$Date >= fromDate & data$Date <= toDate, ]
head(subData)
tail(subData)