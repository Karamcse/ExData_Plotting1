source("./ExData_Plotting1/readdata.R")

par(pin=c(4.5,4.5))
## Create a Time Series on Global Active Power
par(bg="transparent")
png(filename="./figure/plot2.png")

plot(data$Global_active_power~data$DateTime,type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()