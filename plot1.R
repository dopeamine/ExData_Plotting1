source("readData.R")
png(filename = "plot1.png",width = 480,height = 480,units = "px")
hist(mainData$Global_active_power,col = "red",xlab = "Global Active Power(kilowatts)",ylab = "Frequency",main ="Global Active Power")
dev.off()