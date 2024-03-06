View(airquality) 
air<-airquality 
library(ggplot2) 
library("gridExtra") 
air$Month <- factor(air$Month,labels=c("May","June","July","August","September")) 
gg1 <- ggplot(air,aes(x=1:nrow(air),y=Temp)) + 
geom_line(aes(col=Month)) + 
geom_point(aes(col=Month,size=Wind)) + 
geom_smooth(method="loess",col="black") + 
labs(x="Time (days)",y="Temperature (F)") 
s<-ggplot(data=air,aes(x=Ozone, y=..density..)) 
s+geom_histogram(binwidth=10,aes(fill=Month),colour="Black")+ 
geom_density(lwd = 1, colour = 4, 
fill = 4, alpha = 0.25)
