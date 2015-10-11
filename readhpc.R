# !!! Data set must be downloaded and unziped from
# https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
# Data set is derived from data on http://archive.ics.uci.edu/ml/

# Read data into hpc (household_power_consumption dataframe)
hpc <- read.csv2("household_power_consumption.txt",na.string="?",dec='.',stringsAsFactors=FALSE)
hpc <- hpc[hpc$Date %in% c('1/2/2007','2/2/2007'),]

# Make datetime and add to hpc dataframe
hpc$datetime <- strptime(paste(hpc$Date,hpc$Time),"%d/%m/%Y %H:%M:%S")

# Flag that hpc have been read and created in the workspace
hpc.read <- TRUE