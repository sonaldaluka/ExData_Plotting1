abc<-read.table("E:/sonal/Courses/4.Exploratory data analysis/assignment one/household_power_consumption.txt",header=TRUE, sep=";",stringsAsFactors=F)
class(abc$Time)
class(abc$Date)
abc_data<-abc[abc$Date=="1/2/2007"|abc$Date=="2/2/2007", ]
abc_data$Date_Time = paste(abc_data$Date,abc_data$Time,sep=' ')
abc_data$Date_Time = strptime(abc_data$Date_Time,format="%d/%m/%Y %H:%M:%S")

colnames(abc_data)
plot(x=abc_data$Date_Time,y= abc_data$Global_active_power,type="l",xlab="")

png(filename="Plot2.png")
plot(x=abc_data$Date_Time,y= abc_data$Global_active_power,type="l",xlab="",ylab="Global Active Power(kilowatts)")
dev.off()
