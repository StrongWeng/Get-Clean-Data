# **CodeBook for Activity Monitoring Data(Revised)**

This code book describes the variables, the data, and any transformations or work performed to clean up the data. Three sections are divided to describe original data sets, how we transformed the original data sets, and what are included in new tidy data set we created.

## Descriptions of Original Data Set
The original data sets provided were separated into "train set" and "test set", which are measures of activities from 21 and 9 volunteer subjects respectively. Each (volunteer)subject was measured on 6 types of movement,walking,walking upstairs,walking downstairs,sitting,standing and laying,and gathered up movments of 561 statistical measures.  
The test and train data sets each has 3 separate files,recording the unique numbers of subjects,6 activity types and 561 measures of movements separately, and measures of movements (called features here) were taken by embedded accelerometer and gyroscope to capture 3-axial linear acceleration and 3-axial angular velocity. The measures use the following symbol to denote related dimensions:

- f and t: prefix each measure to denote "frequency" domain or "time" domain.
- Body and Gravity:  gravitational and body motion taken by accelerometer.
- Acc and Gyro: to denote which meter used,Accelerometer or Gyroscope.
- jerk and Mag: to denote jerk signals, and magnitude of jerk using Eucliden norms.
- mean, std, mad, max, min,.....angel: 17 measures of estimate.
- XYZ: to denote 3-axial signals in the X, Y and Z directions.

We are to form a new data set to include means of parts of dimensions of activities for each subject on each activity.

## Transformations of Original Data Set
We wrote a script called "run_analysis" to perform data transformation, and accompanied with a code book named "Readme.md" to describe how we manipulate the raw data and what data we form.

## Descriptions of New Tidy Data Set
Our new data set contains 30 sjubjects, 6 activities and 79 measures for each subjects on each activities, 180 observations in total. 81 variables in total are described below.

1. Subject: A categorical variable. It is a factor variable with 30 levels from 1 to 30,that is, 30 subjects labels from 1 to 30 respectively.  
2. Activity: A categorial variable. it is a factor variable with 6 levels from 1 to 6, labeling respectively WALKING, WALKING UPSATIRS, WALKING DOWNSTAIRS, SITTING, STANDING and LAYING in order.
3. All 79 variables are continuous numeric variable. Each variable is mean of original data for each subject on each activity. They are described by groups.
Group 1: Mean of mean body acceleration in time at specific direction.
```
 [1] "Mean.tBodyAcc-mean()-X"              
 [2] "Mean.tBodyAcc-mean()-Y"              
 [3] "Mean.tBodyAcc-mean()-Z" 
```
Group 2: Mean of standard of deviation of body acceleration in time at specific direction.
 ```
 [4] "Mean.tBodyAcc-std()-X"               
 [5] "Mean.tBodyAcc-std()-Y"               
 [6] "Mean.tBodyAcc-std()-Z"
```
Group 3: Mean of mean gravitional acceleration in time at specific direction.
 ```
 [7] "Mean.tGravityAcc-mean()-X"           
 [8] "Mean.tGravityAcc-mean()-Y"           
 [9] "Mean.tGravityAcc-mean()-Z"           
```
Group 4: Mean of standard deviation of gravitional acceleration in time at specific direction.
```
[10] "Mean.tGravityAcc-std()-X"            
[11] "Mean.tGravityAcc-std()-Y"            
[12] "Mean.tGravityAcc-std()-Z" 
```
Group 5: Mean of mean body jerk acceleration in time at specific direction.
```
[13] "Mean.tBodyAccJerk-mean()-X"          
[14] "Mean.tBodyAccJerk-mean()-Y"          
[15] "Mean.tBodyAccJerk-mean()-Z"
```
Group 6: Mean of standard deviation of body jerk acceleration in time at specific direction.
```
[16] "Mean.tBodyAccJerk-std()-X"           
[17] "Mean.tBodyAccJerk-std()-Y"           
[18] "Mean.tBodyAccJerk-std()-Z"
```
Group 7: Mean of mean body acceleration(by gyroscope) in time at specific direction.
```
[19] "Mean.tBodyGyro-mean()-X"             
[20] "Mean.tBodyGyro-mean()-Y"             
[21] "Mean.tBodyGyro-mean()-Z"
```
Group 8: Mean of standard deviation of body acceleration(by gyroscope) in time at specific direction.
```
[22] "Mean.tBodyGyro-std()-X"              
[23] "Mean.tBodyGyro-std()-Y"              
[24] "Mean.tBodyGyro-std()-Z"
```
Group 9: Mean of mean body jerk(by gyroscope) in time at specific direction.
```
[25] "Mean.tBodyGyroJerk-mean()-X"         
[26] "Mean.tBodyGyroJerk-mean()-Y"         
[27] "Mean.tBodyGyroJerk-mean()-Z"  
```
Group 10: Mean of standard deviation of body jerk(by gyroscope) in time at specific direction.
```
[28] "Mean.tBodyGyroJerk-std()-X"          
[29] "Mean.tBodyGyroJerk-std()-Y"          
[30] "Mean.tBodyGyroJerk-std()-Z"
```
Group 11: Mean of mean body acceleration magnitude in time.
```
[31] "Mean.tBodyAccMag-mean()"
```
Group 12: Mean of stand deviation of body acceleration magnitude in time.
```
[32] "Mean.tBodyAccMag-std()" 
```
Group 13: Mean of mean gravitional acceleration magnitude in time .
```
[33] "Mean.tGravityAccMag-mean()" 
```
Group 14: Mean of standard deviation of gravitional acceleration magnitude in time.
```
[34] "Mean.tGravityAccMag-std()" 
```
Group 15: Mean of mean body jerk magnitude in time.
```
[35] "Mean.tBodyAccJerkMag-mean()" 
```
Group 16: Mean of standard deviation of body acceleration jerk magnitude in time.
```
[36] "Mean.tBodyAccJerkMag-std()" 
```
Group 17: Mean of mean body acceleration magnitude(by gyroscope) in time.
```
[37] "Mean.tBodyGyroMag-mean()" 
```
Group 18: Mean of stand deviation of body acceleration magnitude(by gyroscope) in time.
```
[38] "Mean.tBodyGyroMag-std()"
```
Group 19: Mean of mean body jerk magnitude(by gyroscope) in time.
```
[39] "Mean.tBodyGyroJerkMag-mean()"
```
Group 20: Mean of standard deviation of body jerk magnitude(by gyroscope) in time.
```
[40] "Mean.tBodyGyroJerkMag-std()" 
```
Group 21: Mean of mean body acceleration in frequency at a specific direction.
```
[41] "Mean.fBodyAcc-mean()-X"              
[42] "Mean.fBodyAcc-mean()-Y"              
[43] "Mean.fBodyAcc-mean()-Z" 
```
Group 22: Mean of standard deviation of body acceleration in frequency at a specific direction.
```
[44] "Mean.fBodyAcc-std()-X"               
[45] "Mean.fBodyAcc-std()-Y"               
[46] "Mean.fBodyAcc-std()-Z"
```
Group 23: Mean of mean frequency body acceleration in frequency at a specific direction.
```
[47] "Mean.fBodyAcc-meanFreq()-X"          
[48] "Mean.fBodyAcc-meanFreq()-Y"          
[49] "Mean.fBodyAcc-meanFreq()-Z"  
```
Group 24: Mean of mean body jerk acceleration in frequency at a specific direction.
```
[50] "Mean.fBodyAccJerk-mean()-X"          
[51] "Mean.fBodyAccJerk-mean()-Y"          
[52] "Mean.fBodyAccJerk-mean()-Z"
```
Group 25: Mean of standard deviation of body jerk acceleration in frequency at a specific direction.
```
[53] "Mean.fBodyAccJerk-std()-X"           
[54] "Mean.fBodyAccJerk-std()-Y"           
[55] "Mean.fBodyAccJerk-std()-Z" 
```
Group 26: Mean of mean frequency body jerk acceleration in frequency at a specific direction.
```
[56] "Mean.fBodyAccJerk-meanFreq()-X"      
[57] "Mean.fBodyAccJerk-meanFreq()-Y"      
[58] "Mean.fBodyAccJerk-meanFreq()-Z"
```
Group 27: Mean of mean body acceleration(by gyroscope) in frequency at a specific direction.
```
[59] "Mean.fBodyGyro-mean()-X"             
[60] "Mean.fBodyGyro-mean()-Y"             
[61] "Mean.fBodyGyro-mean()-Z" 
```
Group 28: Mean of standard deviation of body acceleration(by gyroscope) in frequency at a specific direction.
```
[62] "Mean.fBodyGyro-std()-X"              
[63] "Mean.fBodyGyro-std()-Y"              
[64] "Mean.fBodyGyro-std()-Z"  
```
Group 29: Mean of mean frequency body acceleration(by gyroscope) in frequency at a specific direction.
```
[65] "Mean.fBodyGyro-meanFreq()-X"         
[66] "Mean.fBodyGyro-meanFreq()-Y"         
[67] "Mean.fBodyGyro-meanFreq()-Z" 
```
Group 30: Mean of mean body acceleration magnitude in frequency.
```
[68] "Mean.fBodyAccMag-mean()"  
```
Group 31: Mean of standard deviation of body acceleration magnitude in frequency.
```
[69] "Mean.fBodyAccMag-std()"
```
Group 32: Mean of mean frequency body acceleration magnitude in frequency.
```
[70] "Mean.fBodyAccMag-meanFreq()"
```
Group 33: Mean of mean body acceleration jerk magnitude in frequency.
```
[71] "Mean.fBodyBodyAccJerkMag-mean()" 
```
Group 34: Mean of standard deviation of body acceleration jerk magnitude in frequency.
```
[72] "Mean.fBodyBodyAccJerkMag-std()"
```
Group 35: Mean of mean frequency body acceleration jerk magnitude in frequency.
```
[73] "Mean.fBodyBodyAccJerkMag-meanFreq()"
```
Group 36: Mean of mean body acceleration magnitude(by gyroscope) in frequency.
```
[74] "Mean.fBodyBodyGyroMag-mean()" 
```
Group 37: Mean of standard deviation of body acceleration magnitude(by gyroscope) in frequency.
```
[75] "Mean.fBodyBodyGyroMag-std()" 
```
Group 38: Mean of mean frequency body acceleration magnitude(by gyroscope) in frequency.
```
[76] "Mean.fBodyBodyGyroMag-meanFreq()"
```
Group 39: Mean of mean body acceleration jerk magnitude(by gyroscope) in frequency.
```
[77] "Mean.fBodyBodyGyroJerkMag-mean()" 
```
Group 40: Mean of standard deviation of body jerk magnitude(by gyroscope) in frequency.
```
[78] "Mean.fBodyBodyGyroJerkMag-std()" 
```
Group 41: Mean of mean frequency body jerk magnitude(by gyroscope) in frequency.
```
[79] "Mean.fBodyBodyGyroJerkMag-meanFreq()"
```