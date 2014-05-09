trial = read.table("household_power_consumption.txt",header=TRUE,sep=";",nrows=10)
data = read.table("household_power_consumption.txt",header=TRUE,sep=";",skip=66636,nrows=2880,colClasses=classes,col.names=names(trial))
attach(data)

#Plot 4:
par(mfcol=c(2,2))

#1
plot(Global_active_power,type="l",axes=F)
axis(at=c(1,1440,2880),labels=c("Thus","Fri","Sat"),side=1,tick=TRUE)
axis(side=2,tick=TRUE)
box()

#2
plot(Sub_metering_1,type="l")
lines(Sub_metering_2,col="red")
lines(Sub_metering_3,col="blue")
legend('topright',legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))

#3
plot(Voltage,type="l",axes=F,xlab="datetime")
axis(at=c(1,1440,2880),labels=c("Thus","Fri","Sat"),side=1,tick=TRUE)
axis(side=2,tick=TRUE)
box()

#4
plot(Global_reactive_power,type="l",axes=F,xlab="datetime")
axis(at=c(1,1440,2880),labels=c("Thus","Fri","Sat"),side=1,tick=TRUE)
axis(side=2,tick=TRUE)
box()

dev.copy(png,'plot4.png')
dev.off()
graphics.off()

