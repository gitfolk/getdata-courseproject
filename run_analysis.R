## *****FUNCTION run_analysis*****
##This function computes the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
## Output
##  1. CSV file (HumanActivityRecognitionSmartphone-Observations-MeanSTD.csv) in working directory 
##      containing all mean and std observations in the combined test and train datasets (Steps 1-4)
##  2. CSV file (HumanActivityRecognitionSmartphone-SummaryAverage-MeanSTD.csv) in working directory 
##      containing average of all mean and std observations in the combined test and train datasets (Step 5)
##  3. Returns a list of two dataframes named observations and summary as per output 1 and 2 above
## Assumptions
##  *raw observation data is located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
run_analysis<-function(){
    ##dowload zip file and extract the subject, activity and function data for
    ##the test and training sets
    temp <- tempfile()
    download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip',temp)
    tst_sub <- read.table(unz(temp, "UCI HAR Dataset/test/subject_test.txt"))
    tst_fun <- read.table(unz(temp, "UCI HAR Dataset/test/X_test.txt"))
    tst_act <- read.table(unz(temp, "UCI HAR Dataset/test/y_test.txt"))
    trn_sub <- read.table(unz(temp, "UCI HAR Dataset/train/subject_train.txt"))
    trn_fun <- read.table(unz(temp, "UCI HAR Dataset/train/X_train.txt"))
    trn_act <- read.table(unz(temp, "UCI HAR Dataset/train/y_train.txt"))
    hdr<-read.table(unz(temp, "UCI HAR Dataset/features.txt"), stringsAsFactors = F)
    act<-read.table(unz(temp, "UCI HAR Dataset/activity_labels.txt"), stringsAsFactors = F)
    unlink(temp)
    ## Step 1 - Merges the training and the test sets to create one data set.
    ## bind all subject, activity and functional data into one data set
    r<-rbind(cbind(tst_sub, tst_act, tst_fun),cbind(trn_sub, trn_act, trn_fun))
    
    ## Step 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
    names(r)<-c('subject', 'activity', hdr$V2)
    r<-r[,which(names(r)=='subject' | names(r)=='activity' | grepl('std()', names(r)) | grepl('mean()', names(r)) | grepl('Mean', names(r)))]

    ## Step 3 - Uses descriptive activity names to name the activities in the data set
    ## first - make sure dplyr is available
    drequire('dplyr')
    ##join with the activity names df
    r<-inner_join(act,r, by=(c('V1'='activity')))
    ##rename the activity variables
    names(r)[1]<-'activity'
    names(r)[2]<-'activityName'

    ## Step 4 - Appropriately labels the data set with descriptive variable names.
    ## Based on description in README file we can replace the abbreviated names with more descriptive one
    names(r)<-gsub("Acc", "Accelerometer", names(r))
    names(r)<-gsub("Gyro", "Gyroscope", names(r))
    names(r)<-gsub("Mag", "Magnitude", names(r))
    names(r)<-gsub("^t", "Time", names(r))
    names(r)<-gsub("angle\\(t", "angle(Time", names(r))
    names(r)<-gsub("^f", "Frequency", names(r))
    names(r)<-gsub("freq\\(\\)", "Frequency", names(r), ignore.case = TRUE)
    ## Fix duplicate body in soure file
    names(r)<-gsub("BodyBody", "Body", names(r))
    ## Remove empty parenthesese
    names(r)<-gsub("\\(\\)", "", names(r))
    ## Finally make them all lower case as per lecture recommendations
    names(r)<-tolower(names(r))
    
    write.table(r,'HumanActivityRecognitionSmartphone-Observations-MeanSTD.txt', row.names = FALSE)
    l<-list(observations=r)
    
    ## Step 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    ## Aggregated mean based on subject and activity (also sort it for readability )
    r<-arrange(aggregate(r[,-(1:3)],r[,1:3], mean),subject, activity)

    write.table(r,'HumanActivityRecognitionSmartphone-SummaryAverage-MeanSTD.txt', row.names = FALSE)
    l$summary=r
    l
}


## *****FUNCTION drequire*****
##This function iterates through packages and ensures they are installed and loaded
drequire <- function(packages){
    for( i in packages ){
        #  require returns TRUE invisibly if it was able to load package
        if( ! require( i , character.only = TRUE ) ){
            #  If package was not able to be loaded then re-install
            install.packages( i , dependencies = TRUE )
            #  Load package after installing
            library( i , character.only = TRUE )
        }
    }
}