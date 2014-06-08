 
## Download the file and unzip to ProjecData Folder

if(!file.exists("../ProjectData//household_power_consumption.txt"))
{
        download.file(url="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",destfile="../household_power_consumption.zip",method="auto")
        unzip("../household_power_consumption.zip",exdir="../ProjectData")
}

## We will only be using data from the dates 2007-02-01 and 2007-02-02.
lines <- grep('^[1-2]/2/2007', readLines('../household_power_consumption.txt'))
skipline<-min(lines)
keeprows<-length(lines)
data<-read.table("../ProjectData/household_power_consumption.txt",sep=";",skip=(skipline-1),
                 nrow=keeprows,header=T,na.strings=c("?","NA",""),
                 col.names=colnames(read.table("../ProjectData//household_power_consumption.txt",nrow = 1,header = TRUE,sep=";")))

data$Date<-as.Date(data$Date,"%d/%m/%Y")
data$DateTime<-strptime(paste(data$Date,data$Time),"%Y-%m-%d %H:%M:%S")
data$DateTime<-as.POSIXct(data$DateTime)

