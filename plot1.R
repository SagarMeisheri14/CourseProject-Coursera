trial = read.table("household_power_consumption.txt",header=TRUE,sep=";",nrows=10)
data = read.table("household_power_consumption.txt",header=TRUE,sep=";",skip=66636,nrows=2880,colClasses=classes,col.names=names(trial))
attach(data)
#Plot 1:
hist(Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.copy(png,'plot1.png')
dev.off()
graphics.off()
