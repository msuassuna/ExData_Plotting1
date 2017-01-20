rm(list = ls())
setwd("~/Specialization_DataScience/4_Exploratory/Week1/Assignment/ExData_Plotting1")
ElectCons <- read.table("household_power_consumption.txt",sep = ";",
                        skip = 66637,
                        nrows = 2880)
names(ElectCons) <- names(read.table("household_power_consumption.txt",sep = ";",
                                     nrows = 1,
                                     header = TRUE))

# Plot1
png(file="plot1.png", width=480, height=480)
with(ElectCons, hist(Global_active_power, col = "red",
                     main = "Global Active Power",
                     xlab = "Global Active Power (kilowatts)"))
dev.off()