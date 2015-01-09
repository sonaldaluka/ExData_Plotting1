abc<-read.table("E:/sonal/Courses/4.Exploratory data analysis/assignment one/household_power_consumption.txt",header=TRUE, sep=";",stringsAsFactors=F)
class(abc$Time)
class(abc$Date)
abc_data<-abc[abc$Date=="1/2/2007"|abc$Date=="2/2/2007", ]
abc_data$Date_Time = paste(abc_data$Date,abc_data$Time,sep=' ')
abc_data$Date_Time = strptime(abc_data$Date_Time,format="%d/%m/%Y %H:%M:%S")

abc_data$Sub_metering_1<-as.numeric(abc_data$Sub_metering_1)
abc_data$Sub_metering_2<-as.numeric(abc_data$Sub_metering_2)

png(filename="Plot3.png")
plot(y=abc_data$Sub_metering_1,x=abc_data$Date_Time, type='l', xlab="", ylab="Energy sub metering") 
lines(x=abc_data$Date_Time,y=abc_data$Sub_metering_2, col="red")
lines(x=abc_data$Date_Time,y=abc_data$Sub_metering_3, col="blue")
legend("topright",col=c("black","red","blue"),lwd=0.5,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
