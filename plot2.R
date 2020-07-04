png("plot2.png",width = 480,height = 480)
household<- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?")
sub_household<- subset(household, Date %in% c("1/2/2007","2/2/2007"))
sub_household$Date <- as.Date(sub_household$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(sub_household$Date), sub_household$Time)
sub_household$Datetime <- as.POSIXct(datetime)

## Plot 2
with(sub_household, {
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})
dev.off()
