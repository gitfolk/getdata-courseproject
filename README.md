 # Getting and Cleaning Data - Course Project ReadMe
 
 ## Contents
 
* __CodeBook.md:__ file describing source and output datasets and transformation procedures
* __README.md:__ this file describing project contents 
* __run_analysis.R:__ file containg R script that transforms source dataset to output files
* __HumanActivityRecognitionSmartphone-Observations-MeanSTD.txt:__ file containing outputs of observations (Requirements 1-4)
* __HumanActivityRecognitionSmartphone-SummaryAverage-MeanSTD.txt:__ file containing summary of averages of observations(Requirement 5)

 ## Requirements
You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

 ## Assumptions
 Raw observation data is located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 
 ## Instructions 
1. Place *run_analysis.R* file in working directory
2. Run *source("run_analysis.R")*
3. Run *run_analysis()* to generate _HumanActivityRecognitionSmartphone-Observations-MeanSTD.txt_ and _HumanActivityRecognitionSmartphone-SummaryAverage-MeanSTD.txt_ files

NOTE: assigning *run_analysis* to a variable will assign a list with two entries: *observations* and *summary* which are datframes corresponding to _HumanActivityRecognitionSmartphone-Observations-MeanSTD.txt_ and _HumanActivityRecognitionSmartphone-SummaryAverage-MeanSTD.txt_ respectively
 
 ## Dependencies
run_analysis.R is dependant on the dplyr package, and will automatically install and load if not available

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
* write information to _HumanActivityRecognitionSmartphone-Observations-MeanSTD.txt_ 
* store dataframe as list element: observation

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* using the aggregate function group the data by subject and activity, using mean to calculate the average for the observations
* write information to _HumanActivityRecognitionSmartphone-SummaryAverage-MeanSTD.txt_
* store dataframe as secondary list element: summary

