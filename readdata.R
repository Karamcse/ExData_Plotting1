setwd("J:/Coursera//R//Exploratory data analysis/CorrectedCourseProject1/")
lines <- grep('^[1-2]/2/2007', readLines('household_power_consumption.txt'))
skipline<-min(lines)
keeprows<-length(lines)
data<-read.table("./household_power_consumption.txt",sep=";",skip=(skipline-1),
                 nrow=keeprows,header=T,na.strings=c("?","NA",""),
                 col.names=colnames(read.table("./household_power_consumption.txt",nrow = 1,header = TRUE,sep=";")))

data$Date<-as.Date(data$Date,"%d/%m/%Y")
data$DateTime<-strptime(paste(data$Date,data$Time),"%Y-%m-%d %H:%M:%S")
data$DateTime<-as.POSIXct(data$DateTime)
