setwd("~/Specialization_DataScience/4_Exploratory/Week1/Assignment/ExData_Plotting1")

source("ReadData.R")

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