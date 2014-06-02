# plot1.R
#--------------------------
# Bastiaan Quast
# this file does the following
# 1. download data from UCI Machine Learning Repository
# 2. read the data into R
# 3. plot the data
# =========================

# 1. download the data
file.url <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
temp <- tempfile()
download.file( file.url, temp )

# 2. read the data into R
data <- unz(temp, 'household_power_consumption.txt')
power.consumption <- read.table( data, sep = ';', na.strings = '?' )
unlink(temp)
rm(temp)
rm(data)
rm(file.url)