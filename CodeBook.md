Codebook:Getting and Cleaning Data
==================================


Variables
---------
* `afulldata` - Data frame, 10299 observations, 564 variables,present in Complete_data.txt or Complete_data.csv
    * `ActivityID` - The ID of the activity performed
    * `ActivityName` - Labels naming the activity, as per activity_labels.txt
    * `SubjectID` - ID number of the subject.
    * The above values represent whose values of were recorded.
    * The remaining 561 columns are numeric values of the features, named as           described in the given data.
    
* `acntdata` - Data frame, 10299 observations, 69 variables, present in tidy_data.txt or tidy_data.csv
    * `ActivityID` - The ID of the activity performed
    * `ActivityName` - Labels naming the activity, as per activity_labels.txt
    * `SubjectID` - ID number of the subject.
	* The remaining 66 columns correspond to the numeric values of features containing `-mean()` or `-std()` in their names. Their names have been cleaned up to be self-explanatory.
  


About the Variables
-------------------
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ,
tGravityAcc-XYZ,
tBodyAccJerk-XYZ,
tBodyGyro-XYZ,
tBodyGyroJerk-XYZ,
tBodyAccMag,
tGravityAccMag,
tBodyAccJerkMag,
tBodyGyroMag,
tBodyGyroJerkMag,
fBodyAcc-XYZ,
fBodyAccJerk-XYZ,
fBodyGyro-XYZ,
fBodyAccMag,
fBodyAccJerkMag,
fBodyGyroMag,
fBodyGyroJerkMag


We are calculating mean and standard deviation for the above mentioned variable.
Features are normalized and bounded within [-1,1].