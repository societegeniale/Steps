library(ggplot2)

stepsSum <- stepsData[,.(steps=sum(steps)),by=date]

p <- ggplot(data=stepsSum, mapping = aes(x=steps) ) + geom_histogram()
print(p)

print(stepsSum[,.(average=mean(steps,na.rm = TRUE),median=median(steps,na.rm = TRUE))])
