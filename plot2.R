source("readData.R")
png(filename = "plot2.png",width = 480,height = 480,units = "px")
plot(dateTime,mainData$Global_active_power,type = "line",xlab="",ylab = "Global Active Power(kilowatts)")
dev.off()