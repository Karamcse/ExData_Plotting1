source("./ExData_Plotting1/readdata.R")
##Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.

par(pin=c(6.4,6.4))
par(bg="transparent")
png(filename="./ExData_Plotting1//figure/plot1.png")
hist(data$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()
