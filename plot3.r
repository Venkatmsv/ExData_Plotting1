
source('LoadPlotData.r')

plotData <- LoadPlotData()
#plot 3
png(file="plot3.png",width=480,height=480)
plot(plotData$Time,plotData$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="",col="black")
lines(plotData$Time,plotData$Sub_metering_2,col="red")
lines(plotData$Time,plotData$Sub_metering_3,col="blue")
legend("topright",col=c("black","red","blue"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),border="black",lty=1,inset=0.00)
dev.off()