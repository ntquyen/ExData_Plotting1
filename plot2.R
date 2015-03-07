source("download_data.R")

print("Plotting data to plot2.png")
png("plot2.png")
with(subData, plot(dt, Global_active_power, type = 'l', 
                   ylab = "Global Active Power (kilowatts)"))
dev.off()