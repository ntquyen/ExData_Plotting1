library(lubridate)

source("download_data.R")
hist(subData$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")