### Coursera course: Getting and Cleanding Data - Project

### Author
Claudio Vallan

### Project description

This project is part of the Coursera course "Getting and Cleaning Data".
The goal is to generate two tidy data sets from data found in different files. 
(For more information see Code.Book.md)

The first file (data.txt) contains 10299 observations of 33 means and 33 standard deviations extracted from two files of the original data set (X_test.txt and X_train.txt). The corresponding subjects and activity codes are extracted from subject_test.txt, subject_train.txt, y_test.txt and y_train.txt. The activity codes are replaced by descriptive names from activity_labels.txt ynd the variable names are extracted from features.txt.

The second file (data2.txt) contains the means of the means and standard deviation variables calculated by subject and activity.

### Files included in Project

* README.md: 
This file

* run_analysis.R:
Script which generates the two tidy data sets

* CodeBook.md:
Description of the variables which are found in the generated data sets

### Notes

* To run the script run_analysis.R you need to download following zip file:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

* The downloaded Dataset.zip file has to be extracted into the working directory.

* You need to install the package "reshape2"" in order that the script can run.

* After execution you will find the generated files (data.txt and data2.txt) in the working directory.

### License

No license whatsoever