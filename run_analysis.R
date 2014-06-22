## Script to make two tidy data sets for Coursera "Getting and Cleaning Data"
## course project. Original dataset needs to be in working directory.
## The script extracts and combines means and standard deviations from 
## the training and the test datasets. Furthermore it assigns test subjects
## and activity to each measurment. The activity uses descriptive names and
## and the variables get descriptive lables.

## set environment
library(reshape2)

## read data sets
data <- read.table("UCI HAR Dataset/test/X_test.txt")
data <- rbind(data, read.table("UCI HAR Dataset/train/X_train.txt"))

## label data set
features <- read.table("UCI HAR Dataset/features.txt")
names(data) <- features[,2]

## extract menas and standard deviations
index <- grep("mean[(]|std[(]", features[,2])
data <- data[,index]

## add activity as factor and give descriptive names to activity
activity <- as.vector(read.table("UCI HAR Dataset/test/y_test.txt")[,1])
activity <- c(activity, as.vector(read.table("UCI HAR Dataset/train/y_train.txt"))[,1])
labels <- (as.vector(read.table("UCI HAR Dataset/activity_labels.txt")[,2]))
activity <- factor(activity, labels = labels)
data <- cbind(activity, data)

## add subject as factor
subject <- as.vector(read.table("UCI HAR Dataset/test/subject_test.txt")[,1])
subject <- c(subject, as.vector(read.table("UCI HAR Dataset/train/subject_train.txt"))[,1])
subject <- factor(subject)
data <- cbind(subject, data)

## create dataset containg average for each activity and each subject
data2 <- melt(data, id=c("subject", "activity"))
data2 <- dcast(data2, subject + activity ~variable, mean)
data2 <- melt(data2, id=c("subject", "activity"))
names(data2)[4] <- "mean"

## save tables to files
write.table(data, file="data.txt", sep ="\t", row.names=FALSE)
write.table(data2, file="data2.txt", sep ="\t", row.names=FALSE)