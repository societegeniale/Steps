nbNA <- sum(is.na(stepsData$steps))
print(paste0("Number of missing values: ", nbNA, " (", round(nbNa/nrow(stepsData)*100,digits=2), "%)"))

aggregate(steps~date, stepsData, function(x) { sum(is.na(x)) }, na.action=na.pass )
# 288 on 8 days
aggregate(steps~interval, stepsData, function(x) { sum(is.na(x)) }, na.action=na.pass )
# 8 everywhere
# => some days are empty.  lets fill interval in those days with the mean of this interval for all days

