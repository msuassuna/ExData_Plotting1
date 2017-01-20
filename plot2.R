rm(list = ls())
setwd("~/Specialization_DataScience/4_Exploratory/Week1/Assignment/ExData_Plotting1")
ElectCons <- read.table("household_power_consumption.txt",sep = ";",
                        skip = 66637,
                        nrows = 2880)
names(ElectCons) <- names(read.table("household_power_consumption.txt",sep = ";",
                                     nrows = 1,
                                     header = TRUE))
# Plot2
# Prepare Day variable to plot 2
ElectCons$Date <- as.Date(ElectCons$Date,'%d/%m/%Y')
ElectCons$Day <- paste(ElectCons$Date, ElectCons$Time)
ElectCons$Day <- strptime(ElectCons$Day, "%Y-%m-%d %H:%M:%S")

png(file="plot2.png", width=480, height=480)
with(ElectCons, plot(Day,Global_active_power, type = "l",
                     ylab = "Global Active Power (killowats)",
                     xlab = ''))
dev.off()