# Read data if not read
if(!exists('hpc.read')){
    source("readhpc.R")
}

# Set local to English so we get weekdays in english on the x-axes (standard is Norwegian for me)
Sys.setlocale("LC_ALL","English")

# Set up png device width of 480 pixels and a height of 480 pixels
png(file = "plot3.png",width=480,height=480)

# base plot Sub meterings restricted to dates 2007-02-01 and 2007-02-02
# 
xrange <- range(hpc$datetime)
yrange <- range(hpc$Sub_metering_1,hpc$Sub_metering_2,hpc$Sub_metering_3)
plot(xrange,yrange,type='n',xlab='', ylab="Energi sub metering")
lines(hpc$datetime,hpc$Sub_metering_1,col=1)
lines(hpc$datetime,hpc$Sub_metering_2,col=2)
lines(hpc$datetime,hpc$Sub_metering_3,col=4)
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),fill=NULL,
       lwd=1,col=c(1,2,4),border="transparent")

# Close png device
dev.off()