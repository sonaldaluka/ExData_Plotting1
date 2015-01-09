hpc<-read.table("E:/sonal/Courses/4.Exploratory data analysis/assignment one/household_power_consumption.txt",header=TRUE, sep=";",stringsAsFactors=F)
class(hpc$Time)
hpc_data<-hpc[hpc$Date=="1/2/2007"|hpc$Date=="2/2/2007", ]



png(filename="Plot1.png")
hist(as.numeric(as.character(hpc_data$Global_active_power)),xlab="Global Active Power (kilowatts)",col="red",main="Global Active Power")
dev.off()
