# Read data if not read
if(!exists('hpc.read')){
    source("readhpc.R")
}

# Set local to English so we get weekdays in english on the x-axes (standard is Norwegian for me)
Sys.setlocale("LC_ALL","English")

# Set up png device width of 480 pixels and a height of 480 pixels
png(file = "plot4.png",width=480,height=480)
par(mfrow=c(2,2)) # 2x2 plots
# Plot1 base plot restricted to dates 2007-02-01 and 2007-02-02
# Set title and x-label
plot(hpc$datetime,hpc$Global_active_power,type='l',xlab='',ylab="Global Activ Power (kilowatts)")
# Plot 2 
plot(hpc$datetime,hpc$Voltage,type='l',xlab="datetime",ylab="Voltage")
# Plot3
xrange <- range(hpc$datetime)
yrange <- range(hpc$Sub_metering_1,hpc$Sub_metering_2,hpc$Sub_metering_3)
plot(xrange,yrange,type='n',xlab='', ylab="Energi sub metering")
lines(hpc$datetime,hpc$Sub_metering_1,col=1)
lines(hpc$datetime,hpc$Sub_metering_2,col=2)
lines(hpc$datetime,hpc$Sub_metering_3,col=4)
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),fill=NULL,bty='n',
       lwd=1,col=c(1,2,4),border="transparent")
# Plot4
plot(hpc$datetime,hpc$Global_reactive_power,type='l',xlab="datetime",ylab="Global_reactiv_power")

# Close png device
dev.off()