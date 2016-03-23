
source('LoadPlotData.r')

plotData <- LoadPlotData()
#plot 4
png(file="plot4.png",width=480,height=480)
par(mfrow=c(2,2))
plot(plotData$Time,plotData$Global_active_power,type="l",ylab="Global Active Power(Kilowatts)",xlab="")
plot(plotData$Time,plotData$Voltage,type="l",ylab="Voltage",xlab="datetime")
plot(plotData$Time,plotData$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="",col="black")
lines(plotData$Time,plotData$Sub_metering_2,col="red")
lines(plotData$Time,plotData$Sub_metering_3,col="blue")
legend("topright",col=c("black","red","blue"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,box.lwd=0)
plot(plotData$Time,plotData$Global_reactive_power,type="n",xlab="datetime",ylab="Global_reactive_power")
lines(plotData$Time,plotData$Global_reactive_power,col="black")
dev.off()