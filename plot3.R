rm(list = ls())
setwd("~/Specialization_DataScience/4_Exploratory/Week1/Assignment/ExData_Plotting1")
ElectCons <- read.table("household_power_consumption.txt",sep = ";",
                        skip = 66637,
                        nrows = 2880)
names(ElectCons) <- names(read.table("household_power_consumption.txt",sep = ";",
                                     nrows = 1,
                                     header = TRUE))
# Plot3
# Prepare Day variable to plot 3
ElectCons$Date <- as.Date(ElectCons$Date,'%d/%m/%Y')
ElectCons$Day <- paste(ElectCons$Date, ElectCons$Time)
ElectCons$Day <- strptime(ElectCons$Day, "%Y-%m-%d %H:%M:%S")


png(file="plot3.png", width=480, height=480)
with(ElectCons,plot(Day,Sub_metering_1, type = "l",
                    ylab = "Energy sub metering",
                    xlab = ''))
with(ElectCons,{
      lines(Day,Sub_metering_2,col = "red")
      lines(Day,Sub_metering_3,col = "blue")
      legend("topright",lty = 1,col = c("black", "red", "blue"),
             legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))})
dev.off()