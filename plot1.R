setwd("~/Specialization_DataScience/4_Exploratory/Week1/Assignment/ExData_Plotting1")

source("ReadData.R")

# Plot1
png(file="plot1.png", width=480, height=480)
with(ElectCons, hist(Global_active_power, col = "red",
                     main = "Global Active Power",
                     xlab = "Global Active Power (kilowatts)"))
dev.off()