install.packages('plyr')
library(plyr)

challenger = read.csv("C:/Users/tcp/Desktop/R/challenger-data.csv", head=T)

failures = subset(challenger,challenger$Y==1)
no_failures = subset(challenger, challenger$Y==0)
failures_freq = count(failures, 'X')
no_failures_freq = count(no_failures, 'X')

no_failures
failures

plot(x= no_failures$X,
     y= no_failures$Y,
     xlab="Temperature", 
     ylab="Number of failures",
     ylim=c(-0.5, 3.5),
     col="blue")

points(x= failures_freq$X,
      y= failures_freq$freq,
      col="red")


sleep = read.csv("C:/Users/tcp/Desktop/R/sleep.csv", head=T)
sleep

barplot(sleep$Art, names.arg=sleep$Name, xlab="Name", ylab="Sleeping Hours", ylim=c(0,8), main="Art Course Sleeping Hours", col="green")