pollutionData<-read.table("household_power_consumption.txt",sep = ";",header = TRUE,na.strings = '?')
pollutionData$Date<-as.Date(pollutionData$Date,"%d/%m/%Y")
date1<-as.Date("2007/02/01","%Y/%m/%d")
date2<-as.Date("2007/02/02","%Y/%m/%d")
mainData<-pollutionData[pollutionData$Date>=date1 & pollutionData$Date<=date2,]