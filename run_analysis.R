analyse=function(){
    ##Merges the training and the test sets to create one data set.
    xvariables=read.table("./UCI HAR Dataset/features.txt",sep="")
    activity=read.table("./UCI HAR Dataset/activity_labels.txt",sep="")
        
    subjecttest=read.table("./UCI HAR Dataset/test/subject_test.txt",sep="",col.names="subject")
    xtest=read.table("./UCI HAR Dataset/test/X_test.txt",sep="",col.names=xvariables[,2])
    meanvar1=grep("mean",names(xtest)); stdvar1=grep("std",names(xtest))
    xtest1=xtest[,meanvar1]; xtest2=xtest[,stdvar1]
    ytest=read.table("./UCI HAR Dataset/test/y_test.txt",sep="",col.names="activity")
    test=cbind(subjecttest,ytest,xtest1,xtest2)
    
   subjecttrain=read.table("./UCI HAR Dataset/train/subject_train.txt",sep="",col.names="subject")
    xtrain=read.table("./UCI HAR Dataset/train/X_train.txt",sep="",col.names=xvariables[,2])
   meanvar2=grep("mean",names(xtrain));stdva2r=grep("std",names(xtrain))
   xtrain1=xtrain[,meanvar1];xtrain2=xtrain[,stdvar2]
   ytrain=read.table("./UCI HAR Dataset/train/y_train.txt",sep="",col.names="activity")
    train=cbind(subjecttrain,ytrain,xtrain1,xtrain2)
    testtrain=rbind(test,train)            
}