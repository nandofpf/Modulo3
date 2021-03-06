This script summarizes data from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data was gathered using smartphone sensors and measures different human activities such as standing and walking. For more information on how the data was gathered, please see the description provided by the authors: http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.names

The following variables are present in the output:

activity_label - text label for the identified activity, one of: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

subject - identifies the person performing the activity with a numerical id (values range from 1 to 30)

The remaining variables describe the measurements obtained for each activity by the different smartphone sensors. Quoting the original description (from features.txt in the dataset)

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).
These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
Notes:
Features are normalized and bounded within [-1,1].
The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
The gyroscope units are rad/seg.
Only the mean and std values from the original data files are summarized here. Each line in the resulting file represents the average (mean) for that measurment aggregated by subject and activity.

Here is the list of all measurement variables:

tBodyAcc.mean...X

tBodyAcc.mean...Y

tBodyAcc.mean...Z

tBodyAcc.std...X

tBodyAcc.std...Y

tBodyAcc.std...Z

tGravityAcc.mean...X

tGravityAcc.mean...Y

tGravityAcc.mean...Z

tGravityAcc.std...X

tGravityAcc.std...Y

tGravityAcc.std...Z

tBodyAccJerk.mean...X

tBodyAccJerk.mean...Y

tBodyAccJerk.mean...Z

tBodyAccJerk.std...X

tBodyAccJerk.std...Y

tBodyAccJerk.std...Z

tBodyGyro.mean...X

tBodyGyro.mean...Y

tBodyGyro.mean...Z

tBodyGyro.std...X

tBodyGyro.std...Y

tBodyGyro.std...Z

tBodyGyroJerk.mean...X

tBodyGyroJerk.mean...Y

tBodyGyroJerk.mean...Z

tBodyGyroJerk.std...X

tBodyGyroJerk.std...Y

tBodyGyroJerk.std...Z

tBodyAccMag.mean..

tBodyAccMag.std..

tGravityAccMag.mean..

tGravityAccMag.std..

tBodyAccJerkMag.mean..

tBodyAccJerkMag.std..

tBodyGyroMag.mean..

tBodyGyroMag.std..

tBodyGyroJerkMag.mean..

tBodyGyroJerkMag.std..

fBodyAcc.mean...X

fBodyAcc.mean...Y

fBodyAcc.mean...Z

fBodyAcc.std...X

fBodyAcc.std...Y

fBodyAcc.std...Z

fBodyAccJerk.mean...X

fBodyAccJerk.mean...Y

fBodyAccJerk.mean...Z

fBodyAccJerk.std...X

fBodyAccJerk.std...Y

fBodyAccJerk.std...Z

fBodyGyro.mean...X

fBodyGyro.mean...Y

fBodyGyro.mean...Z

fBodyGyro.std...X

fBodyGyro.std...Y

fBodyGyro.std...Z

fBodyAccMag.mean..

fBodyAccMag.std..

fBodyBodyAccJerkMag.mean..

fBodyBodyAccJerkMag.std..

fBodyBodyGyroMag.mean..

fBodyBodyGyroMag.std..

fBodyBodyGyroJerkMag.mean..

fBodyBodyGyroJerkMag.std..
