# CourseProjectGetandCleanData
# cleaning data file - creating tidy data set - Transformation Process

##Steps in performing the transformation

#### load libraries
#### set working directory
#### read in the col names

#### read in x train data

### #assign col names

#### read in y train data, activity id
#### give y data col name "lbl" in preparation for merging a common label is given to the y data
#### get x_train subject id data
#### give x_train subject data col name a common name "subject id" in prepartion for merging
#### create dataset -add train activity id ( y y_data) to train data

#### add auxiliary col to identify train data set once merged called volunteer catg ("train")

#### set working directory to get test data(control)
#### read in test data
#### assign col names for x test data set
#### read in test activity id, y_test data
#### add col label to test activity id for merging."lbl" in preparation for merging a common label 
#### is given to the y data
#### get x_test subject id
#### give x_test subject data col name a common name "subject id" in prepartion for merging
#### add x_test activity id, (y_test data) to test dataset
#### add auxiliary col to identify test data set once merged called volunteer catg ("test")

#### add test data to train data to create combined test-train dataset
#### export col names to excel and clean in excel
#### add clean col names to combined data set above

#### find mean and std col indexes
#### retrieve mean and std data
#### add volunteer category and activity id to data set
#### retrieve activity id for use in assigning activity names
#### get length of data set and use as limit in parsing activity ids
#### assign activtiy name to activity ids in a separate vector
#### give newly assigned activity names a col name of "activity label"
#### add activity name col to data set
#### assign adjusted col names to data set
#### retrieve cols of interest

#### build subject id column combining test and train subject data together

#### add subject id info to data set

#### transform the data to get cut by subject id and activity label 

#### calculate appropriate mean

#### write data to outfile



