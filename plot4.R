source("readData.R")
png(filename = "plot4.png",width = 480,height = 480,units = "px")
par(mfrow=c(2,2))
#plot 1
plot(dateTime,mainData$Global_active_power,type = "line",xlab="",ylab = "Global Active Power(kilowatts)")
#plot 2
plot(dateTime,mainData$Voltage,type = "line",xlab="",ylab = "Voltage")
#plot 3
plot(dateTime,mainData$Sub_metering_1,type = "line",xlab="",ylab = "Energy sub metering")
lines(dateTime,mainData$Sub_metering_2,type = "line",col ="red")
lines(dateTime,mainData$Sub_metering_3,type = "line",col ="blue")
legend('topright',colnames(mainData)[7:ncol(mainData)],lty=1,col=c('black','red','blue'))
#plot 4
plot(dateTime,mainData$Global_reactive_power,type = "line",xlab="",ylab = "Global reactive Power")
dev.off()