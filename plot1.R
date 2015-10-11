# Read data if not read
if(!exists('hpc.read')){
    source("readhpc.R")
}

# Set up png device width of 480 pixels and a height of 480 pixels
png(file = "plot1.png",width=480,height=480)

# Histogram with base plot restricted to dates 2007-02-01 and 2007-02-02, red fill, 
# Set title and x-label
hist(as.numeric(hpc$Global_active_power),col='red',main='Global Activ Power',
     xlab="Global Activ Power (kilowats)",ylim=c(0,1300))

# Close png device
dev.off()