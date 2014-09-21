# **CodeBook for Activity Monitoring Data(Revised)**
```
This code book describes the variables, the data, and any transformations or work performed to clean up the data. Three sections are divided to describe original data sets, how we transformed the original data sets, and what are included in new tidy data set we created.
```
## Descriptions of Original Data Set
The original data sets provided were separated into "train set" and "test set", which are measures of activities from 21 and 9 volunteer subjects respectively. Each (volunteer)subject was measured on 6 types of movement,walking,walking upstairs,walking downstairs,sitting,standing and laying,and gathered up movments of 561 statistical measures.  
The test and train data sets each has 3 separate files,recording the unique numbers of subjects,6 activity types and 561 measures of movements separately, and measures of movements (called features here) were taken by embedded accelerometer and gyroscope to capture 3-axial linear acceleration and 3-axial angular velocity. The measures use the following symbol to denote related dimensions:
```
- f and t: prefix each measure to denote "frequency" domain or "time" domain.
- Body and Gravity:  gravitational and body motion taken by accelerometer.
- Acc and Gyro: to denote which meter used,Accelerometer or Gyroscope.
- jerk and Mag: to denote jerk, and magnitude of jerk using Eucliden norms.
- mean, std, mad, max, min,.....angel: 17 measures of estimate.
- XYZ: to denote 3-axial signals in the X, Y and Z directions.
```
we are to form a new data set to include means of parts of dimensions of activities for each subject on each activity.

## Transformations of Original Data Set
We wrote a script called "run_analysis" to perform data transformation, and accompanied by a code book named "Readme.md" to describe how we manipulate the raw data and what dat we get.

## Descriptions of New Tidy Data Set
Our new data set contains 30 sjubjects, 6 activities and 79 measures for each subjects on each activities. 81 variables in total are described below.
```
1. Subject: A categorical variable. A factor with 30 levels from 1 to 30,that is 30 subjects labels from 1 to 30.  
2. Activity: A categorial variable. A factor with 6 levels from 1 to 6, labeling respectively WALKING, WALKING UPSATIRS, WALKING DOWNSTAIRS, SITTING, STANDING and LAYING in order.
3. 
```