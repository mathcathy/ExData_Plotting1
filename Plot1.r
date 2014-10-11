#NOTE: data has been subsetted in order to save space in computer memory
#subset file has also been uploaded to the github repository

data<-read.csv("subset_household_data.csv", header=TRUE, stringsAsFactors = FALSE)
png(file="Plot1.png",width=480,height=480)
par(mfrow = c(1,1),  mgp = c(2,1,0))
hist(data[,3], col="red", main = "Global Active Power", xlab="Global active power (kilowatts)")
dev.off()