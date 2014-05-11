source("./ExData_Plotting1/readdata.R")
par(pin=c(6.4,6.4))
par(bg="transparent")
png(filename="./ExData_Plotting1//figure/plot1.png")
hist(data$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()