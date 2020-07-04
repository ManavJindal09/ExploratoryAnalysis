png("plot1.png",width = 480,height = 480)

household <- read.csv("household_power_consumption.txt", header=T, sep=';')
sub_household <- subset(household, Date %in% c("1/2/2007","2/2/2007"))
sub_household$Date <- as.Date(sub_household$Date, format="%d/%m/%Y")
sub_household$Global_active_power<-as.numeric(sub_household$Global_active_power)
hist(sub_household$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.off()
