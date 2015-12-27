# Function to check if the zip file with the data exists in the directory and download it otherwise
DownloadDataSet <- function(){
		if(!file.exists("getdata-projectfiles-UCI HAR Dataset.zip")){
				download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "getdata-projectfiles-UCI HAR Dataset.zip")
		}
}

DownloadDataSet()
library(plyr)

# Load the Activity labels and the features
ActivityLabels <- read.table(unz("getdata-projectfiles-UCI HAR Dataset.zip", "UCI HAR Dataset/activity_labels.txt"))
features <- read.table(unz("getdata-projectfiles-UCI HAR Dataset.zip", "UCI HAR Dataset/features.txt"))

# Load the Test data
TestData <- read.table(unz("getdata-projectfiles-UCI HAR Dataset.zip", "UCI HAR Dataset/test/X_test.txt"))
TestActivity <- read.table(unz("getdata-projectfiles-UCI HAR Dataset.zip", "UCI HAR Dataset/test/y_test.txt"))
TestSubject <- read.table(unz("getdata-projectfiles-UCI HAR Dataset.zip", "UCI HAR Dataset/test/subject_test.txt"))

# Load the Train data
TrainData <- read.table(unz("getdata-projectfiles-UCI HAR Dataset.zip", "UCI HAR Dataset/train/X_train.txt"))
TrainActivity <- read.table(unz("getdata-projectfiles-UCI HAR Dataset.zip", "UCI HAR Dataset/train/y_train.txt"))
TrainSubject <- read.table(unz("getdata-projectfiles-UCI HAR Dataset.zip", "UCI HAR Dataset/train/subject_train.txt"))

# Merges the Test and Train data
AllData <- rbind(TrainData, TestData)
AllActivities <- rbind(TrainActivity, TestActivity)
AllSubjects <- rbind(TrainSubject, TestSubject)

# get only columns with mean() or std() in their names
MeanStdFeatures <- grep("-(mean|std)\\(\\)", features$V2)

# subset the desired columns
AllData <- AllData[, MeanStdFeatures]

# update values with correct activity names
AllActivities$V1 <- ActivityLabels$V2[AllActivities$V1]

# correct column names
names(AllData) <- tolower(features$V2[MeanStdFeatures])
names(AllActivities) <- "activity"
names(AllSubjects) <- "subject"

# bind everyting into a single data set
AllData <- cbind(AllSubjects, AllActivities, AllData)

# Create a second, independent tidy data set with the average of each variable for each activity and each subject
AveragesData <- ddply(AllData, .(subject, activity), function(x) colMeans(x[,3:length(names(AllData))]))

write.table(AveragesData, "tidy_dataset.txt", row.name=FALSE)
