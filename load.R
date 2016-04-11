library(data.table)

if( !file.exists("activity.csv")) {
  
  download.file("https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip")
  unzip("repdata_data_activity.zip")
  
}

stepsData <- fread("activity.csv")

stepsData$date <- as.Date(stepsData$date,"%Y-%m-%d")