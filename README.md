# Getting-and-Cleaning-Data-Project
This repository contains the documents asked for in the project from the Coursera Getting and Cleaning Data course.

The script presented in the file run_analysis.R does the following:

 1. Checks if the dataset exists in the current directory and downloads it otherwise
 2. Loads the necessary files to perform the analysis into R, using the function unz() to create the connection:
      -activity_labels.txt
      -features.txt
      -X_test.txt
      -y_test.txt
      -subject_test.txt
      -X_train.txt
      -y_train.txt
      -subject_train.txt
3. Merges the data from the training and test files, using the function rbind()
4. Creates a boolean vector with the column names corresponding to the mean() and std() values, using the function grep to subtract this information from the features vector
5. Creates a dataframe corresponding to the subset of the specified columns
6. Updates the corresponding names to the activities in the data
7. Correct the column names  by making them lower case and adding the “subject” and “activity” columns
8. Merge all data with the function cbind()
9. Creates a new tidy dataset with the average of each variable for each activity and each subject
10. Writes a txt file with the resulting tidy dataset
