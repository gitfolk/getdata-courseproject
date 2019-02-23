# CodeBook - GetData Course Project

GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.


* Original data: __https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip__
* Original description of the dataset: __http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones__

## Source Dataset Information

* Description of the dataset: __http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones__
* Dataset Source: __https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip__

The following files were used withing the zip file above
- 'README.txt': 

- __features_info.txt:__ Shows information about the variables used on the feature vector.
- __features.txt:__ List of all features.
- __activity_labels.txt:__ Links the class labels with their activity name.
- __train/X_train.txt:__ Training set.
- __train/y_train.txt:__ Training labels.
- __test/X_test.txt:__ Test set.
- __test/y_test.txt:__ Test labels.
- __train/subject_train.txt:__ Each row identifies the subject who performed the activity for each window sample
- __test/subject_test.txt:__ Each row identifies the subject who performed the activity for each window sample


## Output Dataset Information

The output was required to be transformed from the source dataset using the following steps:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

This generated two output files

* __HumanActivityRecognitionSmartphone-Observations-MeanSTD.csv:__ Culmination of Steps 1-4
* __HumanActivityRecognitionSmartphone-SummaryAverage-MeanSTD.csv:__ Step 5

The output files have the same variable structure as follows:
* __activity:__ number indicating activity
* __activityname:__ name of activity
* __subject:__ number indicating subject
* __timebodyaccelerometer-mean-x:__ refer to source dataset - features_info.txt on  tBodyAcc-XYZ  and mean()
* __timebodyaccelerometer-mean-y:__ refer to source dataset - features_info.txt on  tBodyAcc-XYZ  and mean()
* __timebodyaccelerometer-mean-z:__ refer to source dataset - features_info.txt on  tBodyAcc-XYZ  and mean()
* __timebodyaccelerometer-std-x:__ refer to source dataset - features_info.txt on  tBodyAcc-XYZ  and std()
* __timebodyaccelerometer-std-y:__ refer to source dataset - features_info.txt on  tBodyAcc-XYZ  and std()
* __timebodyaccelerometer-std-z:__ refer to source dataset - features_info.txt on  tBodyAcc-XYZ  and std()
* __timegravityaccelerometer-mean-x:__ refer to source dataset - features_info.txt on tGravityAcc-XYZ and mean()
* __timegravityaccelerometer-mean-y:__ refer to source dataset - features_info.txt on tGravityAcc-XYZ and mean()
* __timegravityaccelerometer-mean-z:__ refer to source dataset - features_info.txt on tGravityAcc-XYZ and mean()
* __timegravityaccelerometer-std-x:__ refer to source dataset - features_info.txt on tGravityAcc-XYZ and std()
* __timegravityaccelerometer-std-y:__ refer to source dataset - features_info.txt on tGravityAcc-XYZ and std()
* __timegravityaccelerometer-std-z:__ refer to source dataset - features_info.txt on tGravityAcc-XYZ and std()
* __timebodyaccelerometerjerk-mean-x:__ refer to source dataset - features_info.txt on tBodyAccJerk-XYZ and mean()
* __timebodyaccelerometerjerk-mean-y:__ refer to source dataset - features_info.txt on tBodyAccJerk-XYZ and mean()
* __timebodyaccelerometerjerk-mean-z:__ refer to source dataset - features_info.txt on tBodyAccJerk-XYZ and mean()
* __timebodyaccelerometerjerk-std-x:__ refer to source dataset - features_info.txt on tBodyAccJerk-XYZ and std()
* __timebodyaccelerometerjerk-std-y:__ refer to source dataset - features_info.txt on tBodyAccJerk-XYZ and std()
* __timebodyaccelerometerjerk-std-z:__ refer to source dataset - features_info.txt on tBodyAccJerk-XYZ and std()
* __timebodygyroscope-mean-x:__ refer to source dataset - features_info.txt on tBodyGyro-XYZ and mean()
* __timebodygyroscope-mean-y:__ refer to source dataset - features_info.txt on tBodyGyro-XYZ and mean()
* __timebodygyroscope-mean-z:__ refer to source dataset - features_info.txt on tBodyGyro-XYZ and mean()
* __timebodygyroscope-std-x:__ refer to source dataset - features_info.txt on tBodyGyro-XYZ and std()
* __timebodygyroscope-std-y:__ refer to source dataset - features_info.txt on tBodyGyro-XYZ and std()
* __timebodygyroscope-std-z:__ refer to source dataset - features_info.txt on tBodyGyro-XYZ and std()
* __timebodygyroscopejerk-mean-x:__ refer to source dataset - features_info.txt on tBodyGyroJerk-XYZ and mean()
* __timebodygyroscopejerk-mean-y:__ refer to source dataset - features_info.txt on tBodyGyroJerk-XYZ and mean()
* __timebodygyroscopejerk-mean-z:__ refer to source dataset - features_info.txt on tBodyGyroJerk-XYZ and mean()
* __timebodygyroscopejerk-std-x:__ refer to source dataset - features_info.txt on tBodyGyroJerk-XYZ and std()
* __timebodygyroscopejerk-std-y:__ refer to source dataset - features_info.txt on tBodyGyroJerk-XYZ and std()
* __timebodygyroscopejerk-std-z:__ refer to source dataset - features_info.txt on tBodyGyroJerk-XYZ and std()
* __timebodyaccelerometermagnitude-mean:__ refer to source dataset - features_info.txt on tBodyAccMag and mean()
* __timebodyaccelerometermagnitude-std:__ refer to source dataset - features_info.txt on tBodyAccMag and std()
* __timegravityaccelerometermagnitude-mean:__ refer to source dataset - features_info.txt on tGravityAccMag and mean()
* __timegravityaccelerometermagnitude-std:__ refer to source dataset - features_info.txt on tGravityAccMag and std()
* __timebodyaccelerometerjerkmagnitude-mean:__ refer to source dataset - features_info.txt on tBodyAccJerkMag and mean()
* __timebodyaccelerometerjerkmagnitude-std:__ refer to source dataset - features_info.txt on tBodyAccJerkMag and std()
* __timebodygyroscopemagnitude-mean:__ refer to source dataset - features_info.txt on tBodyGyroMag and mean()
* __timebodygyroscopemagnitude-std:__ refer to source dataset - features_info.txt on tBodyGyroMag and std()
* __timebodygyroscopejerkmagnitude-mean:__ refer to source dataset - features_info.txt on tBodyGyroJerkMag and mean()
* __timebodygyroscopejerkmagnitude-std:__ refer to source dataset - features_info.txt on tBodyGyroJerkMag and std()
* __frequencybodyaccelerometer-mean-x:__ refer to source dataset - features_info.txt on fBodyAcc-XYZ and mean()
* __frequencybodyaccelerometer-mean-y:__ refer to source dataset - features_info.txt on fBodyAcc-XYZ and mean()
* __frequencybodyaccelerometer-mean-z:__ refer to source dataset - features_info.txt on fBodyAcc-XYZ and mean()
* __frequencybodyaccelerometer-std-x:__ refer to source dataset - features_info.txt on fBodyAcc-XYZ and std()
* __frequencybodyaccelerometer-std-y:__ refer to source dataset - features_info.txt on fBodyAcc-XYZ and std()
* __frequencybodyaccelerometer-std-z:__ refer to source dataset - features_info.txt on fBodyAcc-XYZ and std()
* __frequencybodyaccelerometer-meanfrequency-x:__ refer to source dataset - features_info.txt on fBodyAcc-XYZ and meanFreq()
* __frequencybodyaccelerometer-meanfrequency-y:__ refer to source dataset - features_info.txt on fBodyAcc-XYZ and meanFreq()
* __frequencybodyaccelerometer-meanfrequency-z:__ refer to source dataset - features_info.txt on fBodyAcc-XYZ and meanFreq()
* __frequencybodyaccelerometerjerk-mean-x:__ refer to source dataset - features_info.txt on fBodyAccJerk-XYZ and mean()
* __frequencybodyaccelerometerjerk-mean-y:__ refer to source dataset - features_info.txt on fBodyAccJerk-XYZ and mean()
* __frequencybodyaccelerometerjerk-mean-z:__ refer to source dataset - features_info.txt on fBodyAccJerk-XYZ and mean()
* __frequencybodyaccelerometerjerk-std-x:__ refer to source dataset - features_info.txt on fBodyAccJerk-XYZ and std()
* __frequencybodyaccelerometerjerk-std-y:__ refer to source dataset - features_info.txt on fBodyAccJerk-XYZ and std()
* __frequencybodyaccelerometerjerk-std-z:__ refer to source dataset - features_info.txt on fBodyAccJerk-XYZ and std()
* __frequencybodyaccelerometerjerk-meanfrequency-x:__ refer to source dataset - features_info.txt on fBodyAccJerk-XYZ and meanFreq()
* __frequencybodyaccelerometerjerk-meanfrequency-y:__ refer to source dataset - features_info.txt on fBodyAccJerk-XYZ and meanFreq()
* __frequencybodyaccelerometerjerk-meanfrequency-z:__ refer to source dataset - features_info.txt on fBodyAccJerk-XYZ and meanFreq()
* __frequencybodygyroscope-mean-x:__ refer to source dataset - features_info.txt on fBodyGyro-XYZ and mean()
* __frequencybodygyroscope-mean-y:__ refer to source dataset - features_info.txt on fBodyGyro-XYZ and mean()
* __frequencybodygyroscope-mean-z:__ refer to source dataset - features_info.txt on fBodyGyro-XYZ and mean()
* __frequencybodygyroscope-std-x:__ refer to source dataset - features_info.txt on fBodyGyro-XYZ and std()
* __frequencybodygyroscope-std-y:__ refer to source dataset - features_info.txt on fBodyGyro-XYZ and std()
* __frequencybodygyroscope-std-z:__ refer to source dataset - features_info.txt on fBodyGyro-XYZ and std()
* __frequencybodygyroscope-meanfrequency-x:__ refer to source dataset - features_info.txt on fBodyGyro-XYZ and meanFreq()
* __frequencybodygyroscope-meanfrequency-y:__ refer to source dataset - features_info.txt on fBodyGyro-XYZ and meanFreq()
* __frequencybodygyroscope-meanfrequency-z:__ refer to source dataset - features_info.txt on fBodyGyro-XYZ and meanFreq()
* __frequencybodyaccelerometermagnitude-mean:__ refer to source dataset - features_info.txt on fBodyAccMag and mean()
* __frequencybodyaccelerometermagnitude-std:__ refer to source dataset - features_info.txt on fBodyAccMag and std()
* __frequencybodyaccelerometermagnitude-meanfrequency:__ refer to source dataset - features_info.txt on fBodyAccMag and meanFreq()
* __frequencybodyaccelerometerjerkmagnitude-mean:__ refer to source dataset - features_info.txt on fBodyAccJerkMag and mean()
* __frequencybodyaccelerometerjerkmagnitude-std:__ refer to source dataset - features_info.txt on fBodyAccJerkMag and std()
* __frequencybodyaccelerometerjerkmagnitude-meanfrequency:__ refer to source dataset - features_info.txt on fBodyAccJerkMag and meanFreq()
* __frequencybodygyroscopemagnitude-mean:__ refer to source dataset - features_info.txt on fBodyGyroMag and mean()
* __frequencybodygyroscopemagnitude-std:__ refer to source dataset - features_info.txt on fBodyGyroMag and std()
* __frequencybodygyroscopemagnitude-meanfrequency:__ refer to source dataset - features_info.txt on fBodyGyroMag and meanFreq()
* __frequencybodygyroscopejerkmagnitude-mean:__ refer to source dataset - features_info.txt on fBodyGyroJerkMag and mean()
* __frequencybodygyroscopejerkmagnitude-std:__ refer to source dataset - features_info.txt on fBodyGyroJerkMag and std()
* __frequencybodygyroscopejerkmagnitude-meanfrequency:__ refer to source dataset - features_info.txt on fBodyGyroJerkMag and meanFreq()
* __angle(timebodyaccelerometermean,gravity):__ refer to source dataset - features_info.txt on tBodyAccMean and gravityMean()
* __angle(timebodyaccelerometerjerkmean),gravitymean):__ refer to source dataset - features_info.txt on tBodyAccJerkMean and gravityMean()
* __angle(timebodygyroscopemean,gravitymean):__ refer to source dataset - features_info.txt on tBodyGyroMean and gravityMean()
* __angle(timebodygyroscopejerkmean,gravitymean):__ refer to source dataset - features_info.txt on tBodyGyroJerkMean and gravityMean()
* __angle(x,gravitymean):__ refer to source dataset - features_info.txt on angle and gravityMean()
* __angle(y,gravitymean):__ refer to source dataset - features_info.txt on angle and gravityMean()
* __angle(z,gravitymean):__ refer to source dataset - features_info.txt on angle and gravityMean()


## Transformation Steps in run_analysis.R

1. Merges the training and the test sets to create one data set.
*  download source zip file into a temporary folder structure for processing
*  combine subject, activity and feature columns for test observations from test files in temp zip
*  combine subject, activity and feature columns for train observations from train files in temp zip
*  combine rows from test and train observations to form one data set
*  name data set with activity and subject headings
*  name features with info from features.txt file in temp zip

2. Extracts only the measurements on the mean and standard deviation for each measurement.
*  using grepl, filter out only columns that contain, subject, activity or std and mean designations from the combined data set in 1.

3. Uses descriptive activity names to name the activities in the data set
*  using the deplyr library, inner join the activity id number with the id number from activity_labels.txt file from temp zip

4. Appropriately labels the data set with descriptive activity names.
* using definitions in the features_info.txt file, extend the abbreviated column names using gsub functionality
* write information to _HumanActivityRecognitionSmartphone-Observations-MeanSTD.csv_ and _HumanActivityRecognitionSmartphone-SummaryAverage-MeanSTD.csv_
* store dataframe as list element: observation

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* using the aggregate function group the data by subject and activity, using mean to calculate the average for the observations
* write information to _HumanActivityRecognitionSmartphone-SummaryAverage-MeanSTD.csv_
* store dataframe as secondary list element: summary