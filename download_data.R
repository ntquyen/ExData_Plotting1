library(lubridate)
# Download & unzip file
# print("Downloading file...")
#download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 
 #              destfile = "household_power_consumption.zip", method = "curl")
#unzip("household_power_consumption.zip")

## Read file into data frame
print("Reading file into data frame")
data <- read.table("household_power_consumption.txt", na.strings = "?", header = TRUE, sep = ";")
head(data)
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

# Extract data from date "2007-02-01" to date "2007-02-02"
print("Extract data from date 2007-02-01 to date 2007-02-02")
fromDate <- as.Date("2007-02-01")
toDate <- as.Date("2007-02-02")
subData <- data[data$Date >= fromDate & data$Date <= toDate, ]

# Add new column combining Date and Time fields
dt <- paste(subData$Date, subData$Time)
dt <- ymd_hms(dt)
subData$dt <- dt

