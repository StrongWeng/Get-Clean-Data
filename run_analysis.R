analyse=function(){
    ##Merges the training and the test sets to create one data set.
    xvariables=read.table("./UCI HAR Dataset/features.txt",sep="")
    activity=read.table("./UCI HAR Dataset/activity_labels.txt",sep="")
        
    subjecttest=read.table("./UCI HAR Dataset/test/subject_test.txt",sep="",col.names="subject")
    xtest=read.table("./UCI HAR Dataset/test/X_test.txt",sep="",col.names=xvariables[,2])
    ##Extracts only the measurements on the mean and standard deviation for each measurement.
    meanvar1=grep("mean",names(xtest)); stdvar1=grep("std",names(xtest))
    xtest1=xtest[,meanvar1]; xtest2=xtest[,stdvar1]
    ytest=read.table("./UCI HAR Dataset/test/y_test.txt",sep="",col.names="activity")
    test=cbind(subjecttest,ytest,xtest1,xtest2)
    
   subjecttrain=read.table("./UCI HAR Dataset/train/subject_train.txt",sep="",col.names="subject")
   xtrain=read.table("./UCI HAR Dataset/train/X_train.txt",sep="",col.names=xvariables[,2])
   ## Extracts only the measurements on the mean and standard deviation for each measurement.
   meanvar2=grep("mean",names(xtrain));stdvar2=grep("std",names(xtrain))
   xtrain1=xtrain[,meanvar2];xtrain2=xtrain[,stdvar2]
   ytrain=read.table("./UCI HAR Dataset/train/y_train.txt",sep="",col.names="activity")
   train=cbind(subjecttrain,ytrain,xtrain1,xtrain2)
   testtrain=rbind(test,train)
   ##Uses descriptive activity names to name the activities in the data set
   testtrain$activity=factor(testtrain$activity,levels=activity[,1],labels=activity[,2])
   ##Appropriately labels the data set with descriptive variable names. 
   
   ##Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
   write.table(testtrain,file="tidydata.txt",row.names=F)
}