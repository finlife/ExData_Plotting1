setwd("C:/Users/User/Desktop/Course/Data science specialization/Course 4 week 1")
file<-"C:/Users/User/Desktop/Course/Data science specialization/Course 4 week 1/household_power_consumption.txt"
epc<-read.csv2(file = file, header = TRUE, sep=";")
sdate<-"1/2/2007"
edate<-"2/2/2007"
data<-rbind(epc[(as.character(epc$Date)==sdate),], epc[(as.character(epc$Date)==edate),])
date<-as.character(data$Date)
date[date=="1/2/2007"]<-"01/02/2007"
time<-as.character(data$Time)
dt<-paste(date, time)
dt<-strptime(dt, format = "%d/%m/%Y %H:%M:%S")
data<-cbind(data, dt)
plot(x=data$dt, y = as.numeric(data$Global_active_power)/1000, xlab="", ylab = "Global Active Power (kilowatts)", type ="l")
dev.copy(png, file="plot2.png")
dev.off()

