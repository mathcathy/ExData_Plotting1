#NOTE: data has been subsetted in order to save space in computer memory
#subset file has also been uploaded to the github repository

data<-read.csv("subset_household_data.csv", header=TRUE, stringsAsFactors = FALSE)
data[,1]<-as.Date(data[,1],"%d/%m/%Y")
png(file="Plot2.png",width=480,height=480)
par(mfrow = c(1,1),  mgp = c(2,1,0))
plot(data[,3], type = "l", ylab = "Global Active Power (kilowatts)", xaxt="n", xlab="")
axis(1, at=c(0,length(data[,1])/2, length(data[,1])),labels = c("Thu", "Fri", "Sat"))
dev.off()