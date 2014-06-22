## Study design

The purpose of this project is to to collect, work with, and clean a data set. The goal is to prepare tidy data. The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. Data of two experiments (test, train) was merged. A full description of the data used is available at the site from where the data was originally obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data used for this project was obtained from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 

## Data processing
For each measured variable the mean of the means and the mean of the standard deviatons was determined for each activity of each subject.  

## Code book
The presented variables are:

* Subject: 30 subjects were analyzed 

* Activity: 6 activities were analyzed: Walking, walking upstairs, walking downstairs, sitting, standing and laying

* tBodyAcc-XYZ: Body acceleration signal obtained using a low pass Butterworth filter with a corner frequency of 0.3 Hz on tAcc-XYZ. 3-axial signals in the X, Y and Z directions.

* tGravityAcc-XYZ: Gravity acceleration signal obtained using a low pass Butterworth filter with a corner frequency of 0.3 Hz on tGravity-XYZ. 3-axial signals in the X, Y and Z directions.

* tBodyAccJerk-XYZ: Body linear acceleration derived in time to obtain Jerk signals. 3-axial signals in the X, Y and Z directions.

* tBodyGyro-XYZ: Angular velocity. 3-axial signals in the X, Y and Z directions.

* tBodyGyroJerk-XYZ: Angular velocity derived in time to obtain Jerk signals. 3-axial signals in the X, Y and Z directions.

* tBodyAccMag: Body acceleration magnitude calculated using the Euclidean norm.

* tGravityAccMag: Gravity acceleration magnitude calculated using the Euclidean norm.

* tBodyAccJerkMag: Body acceleration magnitude derived in time.

* tBodyGyroMag: Angular velocity magnitude calculated using the Euclidean norm.

* tBodyGyroJerkMag: Angular velocity magnitude derived in time.

* fBodyAcc-XYZ: Fast Fourier Transform (FFT) applyed to tBodyAcc. 3-axial signals in the X, Y and Z directions.

* fBodyAccJerk-XYZ: Fast Fourier Transform (FFT) applyed to tBodyAccJerk. 3-axial signals in the X, Y and Z directions.

* fBodyGyro-XYZ: Fast Fourier Transform (FFT) applyed to tBodyGyro. 3-axial signals in the X, Y and Z directions.

* fBodyAccMag: Fast Fourier Transform (FFT) applyed to tBodyAccMag.

* fBodyAccJerkMag: Fast Fourier Transform (FFT) applyed to tBodyAccJerkMag.

* fBodyGyroMag: Fast Fourier Transform (FFT) applyed to tBodyGyroMag.

* fBodyGyroJerkMag: Fast Fourier Transform (FFT) applyed to tBodyGyroJerkMag.