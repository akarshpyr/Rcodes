quake_data<- datasets::quakes
head(quake_data,100)
tail(quake_data,80)
quake_data[c(1:10),c(1,2)]
summary(quake_data$lat)
summary(quake_data$mag)
summary(quake_data)
plot(quake_data$lat,main = "lati_data plot")
plot(quake_data$mag, main = 'mag plot', type='l')
plot(quake_data$lat,quake_data$mag, type = 'p', col='red')
plot(quake_data$depth)
barplot(quake_data$mag[1:100],xlab = 'counts', ylab = 'magnitude')
barplot(quake_data$depth[1:100],quake_data$mag[1:100],xlab = 'depth', ylab='mag')
hist(quake_data$mag,main = 'mag hist')
hist(quake_data$depth,main='depth hist')
boxplot(quake_data$mag,main='mag plot')
boxplot(quake_data$depth,main='depth plot')
par(mfrow=c(3,3),mar=c(2,2,2,2),las=0,bty='o')
boxplot(quake_data)
boxplot(quake_data$lat)
boxplot.stats(quake_data$lat)$out
boxplot.stats(quake_data$mag)$out
plot(quake_data[c(1:100),c(1:5)])
boxplot(quake_data$stations)
boxplot.stats(quake_data$depth)$out        
boxplot.stats(quake_data$stations)$out
var(quake_data)
library(moments)
skewness(quake_data)
kurtosis(quake_data)
