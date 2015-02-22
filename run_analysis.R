## cleaning data file - creating tidy data set
library (dplyr)  #  load libraries
library(reshape)

setwd("C:/Rtools/cleaningdatafinalproject/UCI HAR Dataset")  # set working directory
vectorlbl<-read.table("features.txt")                        # read in the col names

setwd("C:/Rtools/cleaningdatafinalproject/UCI HAR Dataset/train")  # read in x train data

train_data<-read.table("X_train.txt")
colnames(train_data)<-vectorlbl[,2]                             #assign col names

train_label<-read.table("y_train.txt")                        #read in y train data
colnames(train_label)<-c("lbl")                                # give y data col name lbl
subject_train<-read.table("subject_train.txt")                 # get subjects id data
colnames(subject_train)<-c("subjectid")                       # give subject data col name subject id
train_data1<-cbind(train_data,train_label)                   # create dataset -add train activity id to train data

train_data2<-cbind(train_data1,volunteercatg=c("train"))      #add auxiliary col to identify train data set once merged

setwd("C:/Rtools/cleaningdatafinalproject/UCI HAR Dataset/test")   # set working directory to get test data(control)
test_data<-read.table("X_test.txt")                              # read in test data
colnames(test_data)<-vectorlbl[,2]                                  # retrieve col labels for data set

test_label<-read.table("y_test.txt")                             # read in test activity id
colnames(test_label)<-c("lbl")                                   # add col label to test activity id

subject_test<-read.table("subject_test.txt")                      # get test subject id
colnames(subject_test)<-c("subjectid")                            # add col name in preparation for merging

test_data1<-cbind(test_data,test_label)                           # add test activity id to test data
test_data2<-cbind(test_data1,volunteercatg=c("test"))             # add column to identify test data after the merge
mergeddataset<-rbind(train_data2,test_data2)                        # add test data to train data

meanandstdcolindexvector<-grep("([Mm][Ee][Aa][Nn]|[Ss][Tt][Dd]\\(\\)|[Mm][Ee][Aa][Nn]|[Ss][Tt][Dd])",colnames(mergeddataset))

##meanandstdcolindexvector<-grep("([Mm][Ee][Aa][Nn]|[Ss][Tt][Dd])\\(\\)",colnames(mergeddataset))  # find mean and std col indexes
meanandstddataset<-mergeddataset[,meanandstdcolindexvector]                  #retrieve mean and std data
completedataset<-cbind(meanandstddataset,mergeddataset["lbl"],mergeddataset["volunteercatg"])  # add volunteer category and activity id

testactivitylbl<-completedataset["lbl"]                          # retrieve activity id for use in assigning activity names
actlbl<-data.frame()
for (i in 1:length(completedataset$lbl))                         # get length of data set and use as limit in parsing activity ids
{
  if (testactivitylbl[i,]==1)     activitylbl<-"WALKING"
  else if(testactivitylbl[i,]==2) activitylbl<-"WALKING_UPSTAIRS"
  else if(testactivitylbl[i,]==3) activitylbl<-"WALKING_DOWNSTAIRS"
  else if(testactivitylbl[i,]==4) activitylbl<-"SITTING"
  else if(testactivitylbl[i,]==5) activitylbl<-"STANDING"
  else if(testactivitylbl[i,]==6) activitylbl<-"LAYING"
  ##print(activitylbl)
  actlbl[i,1]<-c(activitylbl)                                    # assign activtiy name
}
colnames(actlbl)<-c("activitylabel")                            #give newly assigned activity names a col name of "activity label"
completedataset1<-cbind(completedataset,actlbl)                  # add activity name col data set
colnames(completedataset1)<-c("tBodyAcc__mean__X",
                              "tBodyAcc__mean__Z",
                              "tBodyAcc__std__Y",
                              "tGravityAcc__mean__X",
                              "tGravityAcc__mean__Z",
                              "tGravityAcc__std__Y",
                              "tBodyAccJerk__mean__X",
                              "tBodyAccJerk__mean__Z",
                              "tBodyAccJerk__std__Y",
                              "tBodyGyro__mean__X",
                              "tBodyGyro__mean__Z",
                              "tBodyGyro__std__Y",
                              "tBodyGyroJerk__mean__X",
                              "tBodyGyroJerk__mean__Z",
                              "tBodyGyroJerk__std__Y",
                              "tBodyAccMag__mean__",
                              "tGravityAccMag__mean__",
                              "tBodyAccJerkMag__mean__",
                              "tBodyGyroMag__mean__",
                              "tBodyGyroJerkMag__mean__",
                              "fBodyAcc__mean__X",
                              "fBodyAcc__mean__Z",
                              "fBodyAcc__std__Y",
                              "fBodyAcc__meanFreq__X",
                              "fBodyAcc__meanFreq__Z",
                              "fBodyAccJerk__mean__Y",
                              "fBodyAccJerk__std__X",
                              "fBodyAccJerk__std__Z",
                              "fBodyAccJerk__meanFreq__Y",
                              "fBodyGyro__mean__X",
                              "fBodyGyro__mean__Z",
                              "fBodyGyro__std__Y",
                              "fBodyGyro__meanFreq__X",
                              "fBodyGyro__meanFreq__Z",
                              "fBodyAccMag__std__",
                              "fBodyBodyAccJerkMag__mean__",
                              "fBodyBodyAccJerkMag__meanFreq__",
                              "fBodyBodyGyroMag__std__",
                              "fBodyBodyGyroJerkMag__mean__",
                              "fBodyBodyGyroJerkMag__meanFreq__",
                              "angle_tBodyAccJerkMean_gravityMean_",
                              "angle_tBodyGyroJerkMean_gravityMean_",
                              "angle_Y_gravityMean_",
                              "tBodyAcc__mean__Y",
                              "tBodyAcc__std__X",
                              "tBodyAcc__std__Z",
                              "tGravityAcc__mean__Y",
                              "tGravityAcc__std__X",
                              "tGravityAcc__std__Z",
                              "tBodyAccJerk__mean__Y",
                              "tBodyAccJerk__std__X",
                              "tBodyAccJerk__std__Z",
                              "tBodyGyro__mean__Y",
                              "tBodyGyro__std__X",
                              "tBodyGyro__std__Z",
                              "tBodyGyroJerk__mean__Y",
                              "tBodyGyroJerk__std__X",
                              "tBodyGyroJerk__std__Z",
                              "tBodyAccMag__std__",
                              "tGravityAccMag__std__",
                              "tBodyAccJerkMag__std__",
                              "tBodyGyroMag__std__",
                              "tBodyGyroJerkMag__std__",
                              "fBodyAcc__mean__Y",
                              "fBodyAcc__std__X",
                              "fBodyAcc__std__Z",
                              "fBodyAcc__meanFreq__Y",
                              "fBodyAccJerk__mean__X",
                              "fBodyAccJerk__mean__Z",
                              "fBodyAccJerk__std__Y",
                              "fBodyAccJerk__meanFreq__X",
                              "fBodyAccJerk__meanFreq__Z",
                              "fBodyGyro__mean__Y",
                              "fBodyGyro__std__X",
                              "fBodyGyro__std__Z",
                              "fBodyGyro__meanFreq__Y",
                              "fBodyAccMag__mean__",
                              "fBodyAccMag__meanFreq__",
                              "fBodyBodyAccJerkMag__std__",
                              "fBodyBodyGyroMag__mean__",
                              "fBodyBodyGyroMag__meanFreq__",
                              "fBodyBodyGyroJerkMag__std__",
                              "angle_tBodyAccMean_gravity_",
                              "angle_tBodyGyroMean_gravityMean_",
                              "angle_X_gravityMean_",
                              "angle_Z_gravityMean_",
                              "lbl",	
                              "volunteercatg",	
                              "activity_label"	)

# retrieve cols of interest
completedataset2<-subset(completedataset1,select=c(tBodyAcc__mean__X,
                                                   tBodyAcc__mean__Z,
                                                   tBodyAcc__std__Y,
                                                   tGravityAcc__mean__X,
                                                   tGravityAcc__mean__Z,
                                                   tGravityAcc__std__Y,
                                                   tBodyAccJerk__mean__X,
                                                   tBodyAccJerk__mean__Z,
                                                   tBodyAccJerk__std__Y,
                                                   tBodyGyro__mean__X,
                                                   tBodyGyro__mean__Z,
                                                   tBodyGyro__std__Y,
                                                   tBodyGyroJerk__mean__X,
                                                   tBodyGyroJerk__mean__Z,
                                                   tBodyGyroJerk__std__Y,
                                                   tBodyAccMag__mean__,
                                                   tGravityAccMag__mean__,
                                                   tBodyAccJerkMag__mean__,
                                                   tBodyGyroMag__mean__,
                                                   tBodyGyroJerkMag__mean__,
                                                   fBodyAcc__mean__X,
                                                   fBodyAcc__mean__Z,
                                                   fBodyAcc__std__Y,
                                                   fBodyAcc__meanFreq__X,
                                                   fBodyAcc__meanFreq__Z,
                                                   fBodyAccJerk__mean__Y,
                                                   fBodyAccJerk__std__X,
                                                   fBodyAccJerk__std__Z,
                                                   fBodyAccJerk__meanFreq__Y,
                                                   fBodyGyro__mean__X,
                                                   fBodyGyro__mean__Z,
                                                   fBodyGyro__std__Y,
                                                   fBodyGyro__meanFreq__X,
                                                   fBodyGyro__meanFreq__Z,
                                                   fBodyAccMag__std__,
                                                   fBodyBodyAccJerkMag__mean__,
                                                   fBodyBodyAccJerkMag__meanFreq__,
                                                   fBodyBodyGyroMag__std__,
                                                   fBodyBodyGyroJerkMag__mean__,
                                                   fBodyBodyGyroJerkMag__meanFreq__,
                                                   angle_tBodyAccJerkMean_gravityMean_,
                                                   angle_tBodyGyroJerkMean_gravityMean_,
                                                   angle_Y_gravityMean_,
                                                   tBodyAcc__mean__Y,
                                                   tBodyAcc__std__X,
                                                   tBodyAcc__std__Z,
                                                   tGravityAcc__mean__Y,
                                                   tGravityAcc__std__X,
                                                   tGravityAcc__std__Z,
                                                   tBodyAccJerk__mean__Y,
                                                   tBodyAccJerk__std__X,
                                                   tBodyAccJerk__std__Z,
                                                   tBodyGyro__mean__Y,
                                                   tBodyGyro__std__X,
                                                   tBodyGyro__std__Z,
                                                   tBodyGyroJerk__mean__Y,
                                                   tBodyGyroJerk__std__X,
                                                   tBodyGyroJerk__std__Z,
                                                   tBodyAccMag__std__,
                                                   tGravityAccMag__std__,
                                                   tBodyAccJerkMag__std__,
                                                   tBodyGyroMag__std__,
                                                   tBodyGyroJerkMag__std__,
                                                   fBodyAcc__mean__Y,
                                                   fBodyAcc__std__X,
                                                   fBodyAcc__std__Z,
                                                   fBodyAcc__meanFreq__Y,
                                                   fBodyAccJerk__mean__X,
                                                   fBodyAccJerk__mean__Z,
                                                   fBodyAccJerk__std__Y,
                                                   fBodyAccJerk__meanFreq__X,
                                                   fBodyAccJerk__meanFreq__Z,
                                                   fBodyGyro__mean__Y,
                                                   fBodyGyro__std__X,
                                                   fBodyGyro__std__Z,
                                                   fBodyGyro__meanFreq__Y,
                                                   fBodyAccMag__mean__,
                                                   fBodyAccMag__meanFreq__,
                                                   fBodyBodyAccJerkMag__std__,
                                                   fBodyBodyGyroMag__mean__,
                                                   fBodyBodyGyroMag__meanFreq__,
                                                   fBodyBodyGyroJerkMag__std__,
                                                   angle_tBodyAccMean_gravity_,
                                                   angle_tBodyGyroMean_gravityMean_,
                                                   angle_X_gravityMean_,
                                                   angle_Z_gravityMean_,
                                                   activity_label))
subject_id<-rbind(subject_train,subject_test)                                          # build subject id column adding test and train subject data
completedataset3<-cbind(completedataset2,subject_id)         # add subject id info to data set


meltedcompletedataset3<-melt(completedataset3,id=c("activity_label","subjectid"))   # transform the data to get id activity label and suject info cut of data

finisheddataset<-cast(meltedcompletedataset3, subjectid~activity_label~variable, mean)   # calculate appropriate mean

write.table(finisheddataset, file = "outdataset.txt", append = FALSE, quote = TRUE, sep = " ",  # write data to outfile
            eol = "\n", na = "NA", dec = ".", row.names = FALSE,
            col.names = TRUE, qmethod = c("escape", "double"),
            fileEncoding = "")



