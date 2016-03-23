
source('LoadPlotData.r')

plotData <- LoadPlotData()
#plot2
png(file="plot2.png",width=480,height=480)
plot(plotData$Time,plotData$Global_active_power,type="l",ylab="Global Active Power(Kilowatts)",xlab="")
dev.off()
