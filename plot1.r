
source('LoadPlotData.r')

plotData <- LoadPlotData()
#plot 1
png(file="plot1new1.png",width=480,height=480)
hist(plotData$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (Kilowatts)")
dev.off()
