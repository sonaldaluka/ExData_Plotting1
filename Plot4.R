abc<-read.table("E:/sonal/Courses/4.Exploratory data analysis/assignment one/household_power_consumption.txt",header=TRUE, sep=";",stringsAsFactors=F)
class(abc$Time)
class(abc$Date)
abc_data<-abc[abc$Date=="1/2/2007"|abc$Date=="2/2/2007", ]
abc_data$Date_Time = paste(abc_data$Date,abc_data$Time,sep=' ')
abc_data$Date_Time = strptime(abc_data$Date_Time,format="%d/%m/%Y %H:%M:%S")

png(filename="Plot4.png")
par(mfrow=c(2,2))
plot(x=abc_data$Date_Time,y= abc_data$Global_active_power,type="l",xlab="",ylab="Global Active Power")
plot(x=abc_data$Date_Time,y= abc_data$Voltage,type="l",xlab="datetime",ylab="Voltage")

plot(y=abc_data$Sub_metering_1,x=abc_data$Date_Time, type='l', xlab="", ylab="Energy sub metering") 
lines(x=abc_data$Date_Time,y=abc_data$Sub_metering_2, col="red")
lines(x=abc_data$Date_Time,y=abc_data$Sub_metering_3, col="blue")

legend("topright",col=c("black","red","blue"),lwd=0.5,bty="n",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(x=abc_data$Date_Time,y= abc_data$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")
dev.off()
