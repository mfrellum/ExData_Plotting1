# Read data if not read
if(!exists('hpc.read')){
    source("readhpc.R")
}

# Set local to English so we get weekdays in english on the x-axes (standard is Norwegian for me)
Sys.setlocale("LC_ALL","English")

# Set up png device width of 480 pixels and a height of 480 pixels
png(file = "plot2.png",width=480,height=480)

# Histogram with base plot restricted to dates 2007-02-01 and 2007-02-02, red fill, 
# Set title and x-label
plot(hpc$datetime,hpc$Global_active_power,type='l',xlab='',ylab="Global Activ Power (kilowatts)")

# Close png device
dev.off()