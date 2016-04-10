library(ggplot2)

intervalMean <- stepsData[,.(steps=mean(steps, na.rm=TRUE)),by=interval]

p <- ggplot(data=intervalMean, mapping = aes(x=interval,y=steps) ) + 
  geom_line()

print(p)
