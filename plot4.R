# source("download_data.R")

print("Plotting data to file plot4.png")
png("plot4.png")
source("plotting.R")
plot4(subData)
dev.off()