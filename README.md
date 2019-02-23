 # Getting and Cleaning Data - Course Project
 
 ## Contents
 
* __CodeBook.md:__file describing source and output datasets and transformation procedures
* __README.md:__this file describing project contents 
* __run_analysis.R:__ file containg R script that transforms source dataset to output files
* __HumanActivityRecognitionSmartphone-Observations-MeanSTD.csv:__ file containing outputs of observations (Requirements 1-4)
* __HumanActivityRecognitionSmartphone-SummaryAverage-MeanSTD.csv:__ file containing summary of averages of observations(Requirement 5)

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
3. Run *run_analysis()* to generate _HumanActivityRecognitionSmartphone-Observations-MeanSTD.csv_ and _HumanActivityRecognitionSmartphone-SummaryAverage-MeanSTD.csv_ files

NOTE: assigning *run_analysis* to a variable will assign a list with two entries: *observations* and *summary* which are datframes corresponding to _HumanActivityRecognitionSmartphone-Observations-MeanSTD.csv_ and _HumanActivityRecognitionSmartphone-SummaryAverage-MeanSTD.csv_ respectively
 
 ## Dependencies
run_analysis.R is dependant on the dplyr package, and will automatically install and load if not available



