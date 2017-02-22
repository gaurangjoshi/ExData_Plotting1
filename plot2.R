MainDataFile <- "D:\\household_power_consumption.txt"
Mydata <- read.table(MainDataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
MysubSetData <- Mydata[Mydata$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(MysubSetData$Date, MysubSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GlobalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, GlobalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
