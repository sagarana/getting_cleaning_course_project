# Code Book - Tidy Averages

Variable information for the tidy averages data set (`tidy_averages.csv`) produced for the "Getting and Cleaning Data" course on Coursera.

## Source data and processing

The tidy averages data set contains 11880 observations of 4 variables. It is derived from sensor data data collected from the accelerometers of Samsung Galaxy S smartphones. The source data and documentation are available from <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

In addition to this code book, the project repository in GitHub (<https://github.com/sagarana/getting_cleaning_course_project>) contains the following:

-   `original_UCI_HAR_data` - directory with a copy of the source data and documentation as downloaded from <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>
-   `README.md` - an overview of the project
-   `run_analysis.R` - the script that processes the source data to produce the tidy averages data set, including instructions and notes about the process
-   `tidy_averages.csv` - the processed data set

## Variables in the tidy averages data set

### activity

**Name:** activity\
**Description:** The activity the subject was engaged in when smartphone sensor data was collected.\
**R data type:** factor\
**Levels:** WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

### subject

**Name:** subject\
**Description:** An identifier for the study participant (subject). 30 subjects are represented in the data.\
**R data type:** factor\
**Levels:** 1 to 30

### feature

**Name:** feature\
**Description:** A measure derived from accelerometer and gyroscope data for each observation. Feature names and their content are described by the original study authors in `original_UCI_HAR_data/features_info.txt`. The `tidy_averages.csv` file is contains all features with "std()" or "mean()" in the feature name (66 of the original 561 features). See appendix for the full list of feature names in `tidy_averages.csv`.\
**R data type:** character

### mean

**Name:** mean\
**Description:** The average of all data points for a given feature, subject, and activity.\
**R data type:** numeric

## Appendix - Features

List of the 66 features that appear in `tidy_average.csv`. There are 561 features in the source data but only features whose names contain "mean()" or "std()" are included in `tidy_average.csv`.

[1] "tBodyAcc-mean()-X"\
[2] "tBodyAcc-mean()-Y"\
[3] "tBodyAcc-mean()-Z"\
[4] "tBodyAcc-std()-X"\
[5] "tBodyAcc-std()-Y"\
[6] "tBodyAcc-std()-Z"\
[7] "tGravityAcc-mean()-X"\
[8] "tGravityAcc-mean()-Y"\
[9] "tGravityAcc-mean()-Z"\
[10] "tGravityAcc-std()-X"\
[11] "tGravityAcc-std()-Y"\
[12] "tGravityAcc-std()-Z"\
[13] "tBodyAccJerk-mean()-X"\
[14] "tBodyAccJerk-mean()-Y"\
[15] "tBodyAccJerk-mean()-Z"\
[16] "tBodyAccJerk-std()-X"\
[17] "tBodyAccJerk-std()-Y"\
[18] "tBodyAccJerk-std()-Z"\
[19] "tBodyGyro-mean()-X"\
[20] "tBodyGyro-mean()-Y"\
[21] "tBodyGyro-mean()-Z"\
[22] "tBodyGyro-std()-X"\
[23] "tBodyGyro-std()-Y"\
[24] "tBodyGyro-std()-Z"\
[25] "tBodyGyroJerk-mean()-X"\
[26] "tBodyGyroJerk-mean()-Y"\
[27] "tBodyGyroJerk-mean()-Z"\
[28] "tBodyGyroJerk-std()-X"\
[29] "tBodyGyroJerk-std()-Y"\
[30] "tBodyGyroJerk-std()-Z"\
[31] "tBodyAccMag-mean()"\
[32] "tBodyAccMag-std()"\
[33] "tGravityAccMag-mean()"\
[34] "tGravityAccMag-std()"\
[35] "tBodyAccJerkMag-mean()"\
[36] "tBodyAccJerkMag-std()"\
[37] "tBodyGyroMag-mean()"\
[38] "tBodyGyroMag-std()"\
[39] "tBodyGyroJerkMag-mean()"\
[40] "tBodyGyroJerkMag-std()"\
[41] "fBodyAcc-mean()-X"\
[42] "fBodyAcc-mean()-Y"\
[43] "fBodyAcc-mean()-Z"\
[44] "fBodyAcc-std()-X"\
[45] "fBodyAcc-std()-Y"\
[46] "fBodyAcc-std()-Z"\
[47] "fBodyAccJerk-mean()-X"\
[48] "fBodyAccJerk-mean()-Y"\
[49] "fBodyAccJerk-mean()-Z"\
[50] "fBodyAccJerk-std()-X"\
[51] "fBodyAccJerk-std()-Y"\
[52] "fBodyAccJerk-std()-Z"\
[53] "fBodyGyro-mean()-X"\
[54] "fBodyGyro-mean()-Y"\
[55] "fBodyGyro-mean()-Z"\
[56] "fBodyGyro-std()-X"\
[57] "fBodyGyro-std()-Y"\
[58] "fBodyGyro-std()-Z"\
[59] "fBodyAccMag-mean()"\
[60] "fBodyAccMag-std()"\
[61] "fBodyBodyAccJerkMag-mean()"\
[62] "fBodyBodyAccJerkMag-std()"\
[63] "fBodyBodyGyroMag-mean()"\
[64] "fBodyBodyGyroMag-std()"\
[65] "fBodyBodyGyroJerkMag-mean()"\
[66] "fBodyBodyGyroJerkMag-std()"
