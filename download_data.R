library(lubridate)
library(dplyr)
# Download & unzip file
# print("Downloading file...")
#download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 
 #              destfile = "household_power_consumption.zip", method = "curl")
#unzip("household_power_consumption.zip")

## Read file into data frame
data <- read.table("household_power_consumption.txt", na.strings = "?", header = TRUE, sep = ";")
head(data)
tail(data)
str(data)
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

# Extract data from date "2007-02-01" to date "2007-02-02"
period <- c(as.Date("2007-02-01"), as.Date("2007-02-02"))
subData <- filter(data, Date %in% period)

# Add new column combining Date and Time fields
dt <- paste(subData$Date, subData$Time)
subData$dt <- ymd_hms(dt)

