Codebook:Getting and Cleaning Data
==================================


Variables
---------
* `afulldata` - Data frame, 10299 observations, 564 variables,present in Complete_data.txt or Complete_data.csv
    * `ActivityID` - The ID of the activity performed. Values from 1:30
    * `ActivityName` - Labels naming the activity, as per activity_labels.txt. Values: LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS
    * `SubjectID` - ID number of the subject. Values from 1:30
    * The above values represent whose values of were recorded.
    * The remaining 561 columns are numeric values of the features, named as           described in the given data. Features are normalized and bounded within values [-1,1].
    
* `acntdata` - Data frame, 10299 observations, 69 variables, present in tidy_data.txt or tidy_data.csv
    * `ActivityID` - The ID of the activity performed. Values from 1:30
    * `ActivityName` - Labels naming the activity, as per activity_labels.txt. Values: LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS
    * `SubjectID` - ID number of the subject. Values from 1:30
    *  The remaining 66 columns correspond to the numeric values of features containing `-mean()` or `-std()` in their names. Their names have been cleaned up to be self-explanatory. Features are normalized and bounded within values [-1,1].
  


About the Variables and Experimental Used
-----------------------------------------
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


Summary of process followed in run_analysis
-------------------------------------------

  *Column bind all the test data: x,y subject to get `testdata`
  
  *Column bind all the train data: x,y subject to get `traindata`

  *Row binded the above data `fulldata`

  *Merge this data with activity_labels data to get a complete dataset with every activity and renaming column names of this complete dataset with the help of features dataset. The complete dataset is called `afulldata`
  
  *Creating a dataset `reddata` having only mean and std features with `ActivityID`,`ActivityName` and `SubjectID`
  
  *Creating required tidy dataset `acntdata` with the necessary processing so as to get the average of each variable for each activity and each subject. 
  
  *Writing the necessary tables :
      
      >`afulldata` in `Complete_data.txt` and `Complete_data.csv` 
      
      >`acntdata`  in `tidy_data.txt` and `tidy_data.csv`