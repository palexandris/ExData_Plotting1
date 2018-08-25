dat<-read.table("C:/Users/Panos/Desktop/Coursera/household_power_consumption.txt",header=T, sep=";",, stringsAsFactors=FALSE, dec=".")

dat$Date<-as.Date(dat$Date, format="%d/%m/%Y")

dat<-dat[dat$Date=="2007-02-01"|dat$Date=="2007-02-02",]

dat$Date<-as.character(dat$Date)

datetime <- strptime(paste(dat$Date, dat$Time, sep=" "), "%Y-%m-%d %H:%M:%S")

png("plot2.png",width = 480, height = 480)

plot(datetime,dat$Global_active_power, type="l",xlab=" ", ylab="Global Active Power (kilowatts)")

dev.off()

