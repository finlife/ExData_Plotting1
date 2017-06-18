setwd("C:/Users/User/Desktop/Course/Data science specialization/Course 4 week 1")
file<-"C:/Users/User/Desktop/Course/Data science specialization/Course 4 week 1/household_power_consumption.txt"
epc<-read.csv2(file = file, header = TRUE, sep=";")
sdate<-"1/2/2007"
edate<-"2/2/2007"
data<-rbind(epc[(as.character(epc$Date)==sdate),], epc[(as.character(epc$Date)==edate),])
hist(as.numeric(data$Global_active_power)/1000, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.copy(png, file="plot1.png")
dev.off()