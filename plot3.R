# source("download_data.R")

print("Plotting data to file plot3.png")
png("plot3.png")
source("plotting.R")
plot3(subData)
dev.off()