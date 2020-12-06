# 0. Preperation
# download data in working directory, if necessary
data.dir <- "./raw-data"
data.url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
data.dir.filename <- paste(data.dir, "/", "raw-data.zip", sep="")

if(!file.exists(data.dir)){
  dir.create(data.dir)
  download.file(url=data.url, destfile=data.dir.filename)
  unzip(zipfile = data.dir.filename, exdir=data.dir)
}

# 1. Merges the training and the test sets to create one data set
## 1-1. read all data
train <- read.table("raw-data/UCI HAR Dataset/train/X_train.txt", quote="\"", comment.char="")
train.label <- read.table("raw-data/UCI HAR Dataset/train/y_train.txt", quote="\"", comment.char="")
train.subject <- read.table("raw-data/UCI HAR Dataset/train/subject_train.txt", quote="\"", comment.char="")

test <- read.table("raw-data/UCI HAR Dataset/test/X_test.txt",  quote="\"", comment.char="")
test.label <- read.table("raw-data/UCI HAR Dataset/test/y_test.txt", quote="\"", comment.char="")
test.subject <- read.table("raw-data/UCI HAR Dataset/test/subject_test.txt", quote="\"", comment.char="")

## 1-2. read labels
activity.labels <- read.table("raw-data/UCI HAR Dataset/activity_labels.txt", quote="\"", comment.char="") 
feature.labels <- read.table("raw-data/UCI HAR Dataset/features.txt",quote="\"", comment.char="")

## 1-3. merge data sets
ds <- rbind(train, test)
ds.subject <- rbind(train.subject, test.subject)
ds.label <- rbind(train.label, test.label)

## 1-3. rename datasets
names(ds) <- feature.labels$V2

## 1-4. add activity labels
names(ds.label) <- "activity"
ds <- cbind(ds.label, ds)

## 1-5. add subjects
names(ds.subject) <- "subject.id"
ds <- cbind(ds.subject, ds)

# 2. Extracts the means and standard deviation for each measurement
v.mean <- grep("mean\\()", names(ds))
v.std <- grep("std\\()", names(ds)) 
ds<- ds[,c(1,2,v.mean,v.std)]

# 3. Uses descriptive activity names to name the activities in the data set
for (i in 1:6) {
  ds$activity[ds$activity==i] <- activity.labels$V2[i]
}

# 4. Appropriately labels the data set with descriptive variable names
v.labels <- names(ds)
v.labels <- gsub("^t", "time.", v.labels)
v.labels <- gsub("^f", "frequency.", v.labels)
v.labels <- gsub("Body","Body.", v.labels)
v.labels <- gsub("Acc","Accelerometer.",v.labels)
v.labels <- gsub("Jerk", "Jerk.", v.labels)
v.labels <- gsub("Gyro", "Gyroscope.", v.labels)
v.labels <- gsub("Gravity","Gravity.", v.labels)
v.labels <- gsub("Mag","Magnitude.", v.labels)
v.labels <- gsub("Body.Body.", "Body.", v.labels)
v.labels <- gsub("\\-mean\\()\\-", "Mean.", v.labels)
v.labels <- gsub("\\-mean\\()", "Mean", v.labels)
v.labels <- gsub("\\-std\\()\\-", "SD.", v.labels)
v.labels <- gsub("\\-std\\()", "SD", v.labels)
names(ds) <- v.labels

# 5. Creates a second, independently tidy data set with the average of each variable for each activity and each subject
# use melt() in reshape2 to transform the data in long format
ds.long <- reshape2::melt(ds, id = c("subject.id", "activity"))
# calculate mean for every variable by subject and activity
result <- reshape2::dcast(ds.long, subject.id + activity ~ variable, mean)
