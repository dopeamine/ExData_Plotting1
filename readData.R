powerConsumptionData<-read.table("household_power_consumption.txt",sep = ";",header = TRUE,na.strings = '?')
powerConsumptionData$Date<-as.Date(powerConsumptionData$Date,"%d/%m/%Y")
date1<-as.Date("2007/02/01","%Y/%m/%d")
date2<-as.Date("2007/02/02","%Y/%m/%d")
mainData<-powerConsumptionData[powerConsumptionData$Date>=date1 & powerConsumptionData$Date<=date2,]
# combine date time to create POSIX style date-time array
dateTime<-paste(mainData$Date,mainData$Time)
dateTime<-strptime(dateTime,"%Y-%m-%d %H:%M:%S")