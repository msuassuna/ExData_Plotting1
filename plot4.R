setwd("~/Specialization_DataScience/4_Exploratory/Week1/Assignment/ExData_Plotting1")

source("ReadData.R")

# Plot4
# Prepare Day variable to plot 4
ElectCons$Date <- as.Date(ElectCons$Date,'%d/%m/%Y')
ElectCons$Day <- paste(ElectCons$Date, ElectCons$Time)
ElectCons$Day <- strptime(ElectCons$Day, "%Y-%m-%d %H:%M:%S")

# Plot4
png(file="plot4.png", width=480, height=480)
par(mfrow = c(2,2))
with(ElectCons,{
      plot(Day,Global_active_power, type = "l",
           ylab = "Global Active Power",
           xlab = '')
      plot(Day,Voltage, type = "l",
           ylab = "Volage",
           xlab = 'datetime')
      plot(Day,Sub_metering_1, type = "l",
           ylab = "Energy sub metering",
           xlab = '')
      lines(Day,Sub_metering_2,col = "red")
      lines(Day,Sub_metering_3,col = "blue")
      legend("topright",lty = 1,
             bty = "n",
             col = c("black", "red", "blue"),
             legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
      plot(Day,Global_reactive_power, type = "l",
           ylab = "Global_reactive_power",
           xlab = 'datetime')})
dev.off()