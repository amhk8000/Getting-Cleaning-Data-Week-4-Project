library(data.table)
library(reshape2)
library(dplyr)

# read training tables - measurements, activity ids and subject ids 
XTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
activity_train <- read.table("./UCI HAR Dataset/train/Y_Train.txt", col.names = c("activityId"))
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = c("subjectId"))

# read test tables - measurements, activity ids and subject ids 
XTest = read.table("./UCI HAR Dataset/test/X_test.txt",header = FALSE)
activity_test = read.table("./UCI HAR Dataset/test/Y_Test.txt",col.names = c("activityId"))
subject_test = read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = c("subjectId"))

#Read activity labels data
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt",col.names = c('activityId','activityType'))


#Read the features data
features = read.table("./UCI HAR Dataset/features.txt",header = FALSE)


# bind train and test subject
subject <- rbind(subject_train,subject_test)
# bind train and test activity 
activity <- rbind(activity_train, activity_test)
# bind train and test data 
XData  <- rbind(XTrain, XTest)

#rename data column names to descriptive feature names
colnames(XData) <- features[,2]

# select those features with mean and std in the columns
featureselect <-  grep("mean\\(\\)|std\\(\\)",colnames(XData))

# select those columns from data whose mean and std is to be calculated.
XDataMean <- XData[, featureselect]

# merge all data with subject as first columns, activity as second 
# and data for the rest
XAllData <- cbind( subject, activity, XDataMean)
dim(XAllData)


#creates a tidy data set with the average of each variable for each activity and each subject
TidySet <- aggregate(. ~subjectId + activityId, XAllData, mean)

# order data by subject and activity
TidySet <- TidySet[order(TidySet$subjectId, TidySet$activityId),]

#
# save tidy set to current directory
write.table(TidySet, "./UCI HAR Dataset/TidySet.txt", row.name=FALSE, col.names = TRUE)