# CourseProjectGetandCleanData
# tidy data set



### vectorlbl - receives col names read in 

### train_data - holds X_train data (561 cols)


### train_label - holds read in y train data
### subject_train - holds subjects id data
### train_data1 - interim dataset -add train activity id - y_train  to x_train data

### train_data2 - auxiliary col to identify train data set once merged


### test_data - holds X_test data(561 cols)
### test_label - holds read in y test data
### subject_test - holds subjects id data
### test_data1 - interim dataset -add train activity id - y_test  to x_test data

### test_data2 - auxiliary col to identify test data set once merged




### mergeddataset - holds test data to train data

### meanandstdcolindexvector -holds mean and std col indexes
### meanandstddataset - retrieve mean and std data
### completedataset -  holds mean, std, volunteer category and activity id

### testactivitylbl - holds activity id for use in assigning activity names
### 1-"WALKING"
### 2-"WALKING_UPSTAIRS"
### 3-"WALKING_DOWNSTAIRS"
### 4-"SITTING"
### 5-"STANDING"
### 6-"LAYING"

### completedataset1- holds dataset and activity labels]
### colnames are              "tBodyAcc__mean__X",
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
                              "activity_label"

completedataset2 holds the following cols

                                                   tBodyAcc__mean__X,
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
                                                   activity_label
subject_id - build subject id column adding test and train subject data

completedataset3 - dataset with subject id
 tBodyAcc_mean__Y,
                                                   tBodyAcc_mean__Z,
                                                   tBodyAcc_std__X,
                                                   tBodyAcc_std__Y,
                                                   tBodyAcc_std__Z,
                                                   tGravityAcc_mean__X,
                                                   tGravityAcc_mean__Y,
                                                   tGravityAcc_mean__Z,
                                                   tGravityAcc_std__X,
                                                   tGravityAcc_std__Y,
                                                   tGravityAcc_std__Z,
                                                   tBodyAccJerk_mean__X,
                                                   tBodyAccJerk_mean__Y,
                                                   tBodyAccJerk_mean__Z,
                                                   tBodyAccJerk_std__X,
                                                   tBodyAccJerk_std__Y,
                                                   tBodyAccJerk_std__Z,
                                                   tBodyGyro_mean__X,
                                                   tBodyGyro_mean__Y,
                                                   tBodyGyro_mean__Z,
                                                   tBodyGyro_std__X,
                                                   tBodyGyro_std__Y,
                                                   tBodyGyro_std__Z,
                                                   tBodyGyroJerk_mean__X,
                                                   tBodyGyroJerk_mean__Y,
                                                   tBodyGyroJerk_mean__Z,
                                                   tBodyGyroJerk_std__X,
                                                   tBodyGyroJerk_std__Y,
                                                   tBodyGyroJerk_std__Z,
                                                   tBodyAccMag_mean_,
                                                   tBodyAccMag_std_,
                                                   tGravityAccMag_mean_,
                                                   tGravityAccMag_std_,
                                                   tBodyAccJerkMag_mean_,
                                                   tBodyAccJerkMag_std_,
                                                   tBodyGyroMag_mean_,
                                                   tBodyGyroMag_std_,
                                                   tBodyGyroJerkMag_mean_,
                                                   tBodyGyroJerkMag_std_,
                                                   fBodyAcc_mean__X,
                                                   fBodyAcc_mean__Y,
                                                   fBodyAcc_mean__Z,
                                                   fBodyAcc_std__X,
                                                   fBodyAcc_std__Y,
                                                   fBodyAcc_std__Z,
                                                   fBodyAccJerk_mean__X,
                                                   fBodyAccJerk_mean__Y,
                                                   fBodyAccJerk_mean__Z,
                                                   fBodyAccJerk_std__X,
                                                   fBodyAccJerk_std__Y,
                                                   fBodyAccJerk_std__Z,
                                                   fBodyGyro_mean__X,
                                                   fBodyGyro_mean__Y,
                                                   fBodyGyro_mean__Z,
                                                   fBodyGyro_std__X,
                                                   fBodyGyro_std__Y,
                                                   fBodyGyro_std__Z,
                                                   fBodyAccMag_mean_,
                                                   fBodyAccMag_std_,
                                                   fBodyBodyAccJerkMag_mean_,
                                                   fBodyBodyAccJerkMag_std_,
                                                   fBodyBodyGyroMag_mean_,
                                                   fBodyBodyGyroMag_std_,
                                                   fBodyBodyGyroJerkMag_mean_,
                                                   fBodyBodyGyroJerkMag_std_,                                                                          activity_label,
                                                   subject_id


meltedcompletedataset3 -holds transform of the data cut by subject id and activity label

finisheddataset - holds pre written data 
                                                    activity_label,
                                                    subject_id,
                                                    mean

outdataset - holds the tidy data set
						activity_label,
                                                    subject_id,
                                                    mean