# source("download_data.R")

print("Plotting data to plot1.png")

png("plot1.png")
source("plotting.R")
plot1(subData)
dev.off()