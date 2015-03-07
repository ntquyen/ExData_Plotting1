# source("download_data.R")

print("Plotting data to plot2.png")
png("plot2.png")
source("plotting.R")
plot2(subData)
dev.off()