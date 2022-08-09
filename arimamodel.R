# time series in R 
#ts() function can be used to see performance of walmart amazon over time sell
#objectname<-ts(data, start, end, frequency)
#data represents the data vector 
#start represents the first observation in time series
#end represents the last observation in time setPrimitiveMethods
#frequency represents number of observation per unit time 
help("ts")
ts(1:10, start=c(1952,2), frequency=4)
ts(matrix(rnorm(300),100,3), start=c(1951,1), frequency=12)
ts(matrix (rnorm))

#weekly data of covid-19 positive cases from 
#22 january, 2020 to 15 april 2020
x<-c(580, 7813, 567, 6784,876, 5678, 8765, 9876,45678)
#library required for decimial_date function 

#library required for decimal_date() function
library(lubridate)
#output to be created as png file 
png(file="timeseries.png")

#creating time series object 
#from date 22 january, 2020
mts<- ts(x, start=decimal_date(ymd("2020-01-22")), frequency = 365.25/7)
#plotting the graph 

plot(mts,xlab="weekly data", ylab="total positive cases",
     main="covid-19 pandemic", col.main="darkgreen")

#saving the file
dev.off()

#multivariate time series 
#taking data of total positive cases and total deaths from covid-19 weekly

positive<- c( 580, 567, 876,876, 87,987, 567, 864,97, 987, 678,77)
death<- c(17, 17, 78, 12, 68, 78,8,87,87,98,87,78)
library (lubridate)
png(file="multivariate.png")
mts<-ts(cbind(positive, death), start = decimal_date(ymd("2020-01-22")), frequency = 365.25/7)
plot(mts, xlab="weekly data", main="covid", col.main="darkgreen")

dev.off()

#forcasting 
help("arima")

library (forecast)
x<-c( 4567, 678, 876, 876, 876, 76, 8765, 876, 876)

library(lubridate)

# output to be created as png file
png(file="forcasted.png")

mst<- ts(x, start=decimal_date(ymd("2020-02-22")), frequency =365.25/7 )
mst
#forcasting model use arima model 
fit<-auto.arima(mst)

#next 5 forcasted values 

library (forecast)
forecast(fit, 5)

# plotting the graph with nex 5 weekly forcasted values 
c<-plot(forecast(fit, 5), xlab="weekly", ylab="total", main="covid", col.main="darkgreen")

c











