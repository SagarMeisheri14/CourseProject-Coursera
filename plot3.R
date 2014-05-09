trial = read.table("household_power_consumption.txt",header=TRUE,sep=";",nrows=10)
data = read.table("household_power_consumption.txt",header=TRUE,sep=";",skip=66636,nrows=2880,colClasses=classes,col.names=names(trial))
attach(data)

#Plot 3:
plot(Sub_metering_1,type="l")
lines(Sub_metering_2,col="red")
lines(Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))
dev.copy(png,'plot3.png')
dev.off()
graphics.off()