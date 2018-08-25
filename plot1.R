dat<-read.table("C:/Users/Panos/Desktop/Coursera/household_power_consumption.txt",header=T, sep=";", col.names=)

dat$Date<-as.Date(dat$Date, format="%d/%m/%Y")

dat<-dat[dat$Date=="2007-02-01"|dat$Date=="2007-02-02",]

png("plot1.png",width = 480, height = 480)

hist(as.numeric(as.character(dat$Global_active_power)), col="red", main="Global Active Power",xlab="Gobal Active Power(kilowatts)",ylab="frequency", ylim=c(0,1200))


dev.off()