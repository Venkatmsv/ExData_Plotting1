LoadPlotData <- function()
{
#read the partial data from the file since we are going to use only the 2007/02/01 and 2007/02/02 data.
energyUsageData <- read.table("./specdata/household_power_consumption.txt",sep=";",header=TRUE,nrow=124845,na="?")

dateTimeCols <- c("Date","Time")
energyUsageData[,dateTimeCols] <- lapply(dateTimeCols,function(x) as.character(energyUsageData[,x]))

#convert the other columns to numeric type from factor type
otherCols <- c("Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
energyUsageData[,otherCols] <- lapply(otherCols,function(x) as.numeric(as.character(energyUsageData[,x])))

#convert the Time column as time type from the character type
energyUsageData$Time <- strptime(paste(energyUsageData$Date,energyUsageData$Time),format="%d/%m/%Y %H:%M:%S")

#convert column Date as date type from character type
energyUsageData$Date <- as.Date(energyUsageData$Date,format="%d/%m/%Y")

#subset the required data for plotting as per the given requirement
dateFilter <- as.Date(c("2007-02-01","2007-02-02"),"%Y-%m-%d")
plotData <- subset(energyUsageData, Date %in% dateFilter)
return (plotData);
}











