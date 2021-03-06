# **From Original Data Sets To One Tidy Data**

### Explain how all of the scripts work and how they are connected.
================================================================
As we are provided, the data sets containing subjects, activity names and measures on dimensions of activities (i.e. 561 dimensions)are divided separately into Test data set and Train data set.
We are asked to aggregate these separate data sets into a complete one by extracting only parts of variables we want.  
I wrote scripts to generate it. The steps and scripts are as follows, describing the process how i read,subset,merge and transform these data sets into a complete one.  

## Step 1: Preparation for tidy data
First read in activity names and their measures we need for merging purpose later, both for Test set and Train set.
```
variables=read.table("./UCI HAR Dataset/features.txt",sep="")
activity=read.table("./UCI HAR Dataset/activity_labels.txt",sep="")
```
## Step 2: Read in Test set data.
1. Load the file of subjects_test, and rename column to "Subject".
2. Load the file of X_test, and rename its columns with "variables" we prepared in step 1.
3. Load the file of Y_test, and rename column to "Activity".
```
testsubject=read.table("./UCI HAR Dataset/test/subject_test.txt"
                       ,sep="",col.names="Subject")
xtest=read.table("./UCI HAR Dataset/test/X_test.txt",sep=""
                 ,col.names=variables[,2])
ytest=read.table("./UCI HAR Dataset/test/Y_test.txt",sep=""
                 ,col.names="Activity")
```                 
4.Extract from "xtest"(i.e.561 dimensions of activities) only measures on mean or standard deviation for each variable. 
5.Fetching variable name containing word of "mean" or "std" by grep function, we get a vector of integer column numbers. We then subset from "xtest" these columns with this criteria.
```
meanvar1=grep("mean",names(xtest)); stdvar1=grep("std",names(xtest))
xtest1=xtest[,meanvar1]; xtest2=xtest[,stdvar1]
```
6.Merge subjects,activity name codes and activity dimensions which are measures on mean or SD into one named "Test".
```
Test=cbind(testsubject,ytest,xtest1,xtest2)
```
## Step 3: Read in Train set data.
1. Load the file of "subjects_train", and rename column to "Subject".
2. Load the file of "X_train", and rename its columns with "variables" we prepared in step 1.
3. Load the file of "Y_train"", and rename column to "Activity".
```
trainsubject=read.table("./UCI HAR Dataset/train/subject_train.txt",sep="",col.names="Subject")
xtrain=read.table("./UCI HAR Dataset/train/X_train.txt",sep=""
                  ,col.names=variables[,2])
ytrain=read.table("./UCI HAR Dataset/train/Y_train.txt",sep=""
                  ,col.names="Activity")
```                 
4.Extract from "xtrain"(i.e.561 dimensions of activities) only measures on mean or standard deviation for each variable. 
5.Fetching column names containing word of "mean" or "std" by grep function, we get a vector of integer column numbers. We then subset from "xtrain" these columns using this criteria and get 79 columns.
```
meanvar2=grep("mean",names(xtrain));stdvar2=grep("std"
            ,names(xtrain))
xtrain1=xtrain[,meanvar2];xtrain2=xtrain[,stdvar2]
```
6.Merge respondants,activity name codes and activity dimensions which are measures on mean or SD into one named Test set.
```
Train=cbind(trainsubject,ytrain,xtrain1,xtrain2)
```
## Step 4: Merge "Test" set and "Train" set to form a complete data set named "TestTrain".  
"TestTrain" data set now has 81 columns and 10,299 observations.
```
TestTrain=rbind(Test,Train)
```   
## Step 5: Use descriptive activity names to name the activities in the data set

We use "Activity" prepared in step 1 to name the activity names by factor function.
```
TestTrain$Activity=factor(TestTrain$Activity,levels=activity[,1]
                          ,labels=activity[,2])
```
## Step 6: Appropriately labels the data set with descriptive variable names.  
1. We match the column names of the new data set with original data set, and restore it to the original variable name. 
```
tobereplaced=tolower(names(TestTrain))
tobereplaced=gsub("\\.","",tobereplaced)
variables$lower=tolower(variables[,2])
variables$lower=gsub("-","",variables$lower)
variables$lower=sub("\\()","",variables$lower)
variables=variables[variables$lower%in%tobereplaced,]
variables$V2=as.character(variables$V2)
```
 2.because new data set is to be aggregated by mean on each subjects for each activity, we prefix "Mean." to denote it.
```
variables$V2=paste("Mean",variables$V2,sep=".")
tobereplaced=c(c("Subject","Activity"),variables[,2])
colnames(TestTrain)=tobereplaced
```
## Step 7: Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
In this step, we create a new data set called "tidydata",independent from "TestTrain" data set. "tidydata" is aggregated by subjects and 6 activities, as well as mean of 79 dimensions of activities. Now, we have the final data set of 180 observations with 81 variables.
```
tidydata=aggregate(TestTrain[,3:81],by=list(TestTrain$Subject,
                                     TestTrain$Activity),mean)
colnames(tidydata)=tobereplaced
tidydata$Subject=factor(tidydata$Subject)
tidydata=tidydata[order(tidydata$Subject,tidydata$Activity),]
```
## Final step: write out the data generated by above procedures.
```
write.table(tidydata,file="tidydata.txt",row.names=F)
```
