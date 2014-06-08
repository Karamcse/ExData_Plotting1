source("./readdata.R")
## Create Time Series On Energy Sub Metering
par(mar=c(2,2,1,1))
par(pin=c(6.4,6.4))
par(bg="transparent")
png(filename="./figure/Plot3.png")

plot(data$Sub_metering_1~data$DateTime,type="l",ylab="Energy sub metering",xlab="")
with(data,points(data$Sub_metering_2~data$DateTime,type="l",col="red"))
with(data,points(data$Sub_metering_3~data$DateTime,type="l",col="blue"))

legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()