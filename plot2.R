source("download_data.R")

dt <- paste(subData$Date, subData$Time)
dt <- ymd_hms(dt)
subData$dt <- dt
with(subData, plot(dt, Global_active_power, type = 'l', ylab = "Global Active Power (kilowatts)"))