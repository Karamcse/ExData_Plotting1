source("./readdata.R")

# Plot4 Created
par(mar=c(2,2,1,1))
par(bg="transparent")
par(pin=c(6.4,6.4))
png(filename="./figure/plot4.png")
par(mfrow=c(2,2))

plot(data$Global_active_power~data$DateTime,type="l",ylab="Global Active Power (kilowatts)",xlab="")

plot(data$Voltage~data$DateTime,type="l",ylab="Voltage",xlab="DateTime")

plot(data$Sub_metering_1~data$DateTime,type="l",ylab="Energy sub metering",xlab="")
with(data,points(data$Sub_metering_2~data$DateTime,type="l",col="red"))
with(data,points(data$Sub_metering_3~data$DateTime,type="l",col="blue"))
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(data$Global_reactive_power~data$DateTime,type="l",ylab="Global_reactive_power",xlab="DateTime")
dev.off()
