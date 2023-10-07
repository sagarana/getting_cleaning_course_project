# Code Book - Tidy Averages

Variable information for the tidy averages data set (`tidy_averages.txt`) produced for the "Getting and Cleaning Data" course on Coursera.

## Source data and processing

The tidy averages data set contains 11880 observations of 4 variables and is an example of "long" tidy data). It is derived from sensor data data collected from the accelerometers of Samsung Galaxy S smartphones by this project:

> Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The source data and documentation are available from <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

The file `original_UCI_HAR_data/README.txt` describes how data was collected by Anguita et. al.:

> "The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz."

For additional information see these files and documentation in the project repository on GitHub (<https://github.com/sagarana/getting_cleaning_course_project>):

-   `original_UCI_HAR_data` - directory with a copy of the source data and documentation as downloaded from <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>
-   `README.md` - an overview of the project and associated files
-   `run_analysis.R` - the script that processes the source data to produce the tidy averages data set, including instructions and notes about the process
-   `tidy_averages.txt` - the processed data set

## Variables in the tidy averages data set

`tidy_averages.txt` contains 11880 observations of 4 variables: activity, subject, feature, and mean.

### activity

**Name:** activity\
**Description:** The activity the subject was engaged in when smartphone sensor data was collected.\
**R data type:** factor\
**Levels:** WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING\
**Notes:** levels drawn from original documentation at `original_UCI_HAR_data/activity_labels.txt`

### subject

**Name:** subject\
**Description:** An identifier for the study participant. 30 subjects are represented in the data.\
**R data type:** factor\
**Levels:** 1 to 30\

### feature

**Name:** feature\
**Description:** A measure derived from accelerometer and gyroscope data for each observation. Feature names and their content are described by the original study authors in `original_UCI_HAR_data/features_info.txt`. The `tidy_averages.txt` file contains the subset of features that have "std()" or "mean()" in the feature name (66 of the original 561 features). See the appendix for the full list of feature names included in `tidy_averages.txt`.\
**R data type:** character\
**Notes:** The list of all features in the source data is available at `original_UCI_HAR_data/features.txt`.

### mean

**Name:** mean\
**Description:** The average of all data points for each combination of subject, activity, and feature.\
**R data type:** numeric (normalized with values between -1 and 1)\
**Notes**: The assignment indicates that the output data can be either "long" or "wide." `tidy_averages.txt` is a long tidy data set where all calculated means are in the same column.

## Appendix - Features

### Features list

List of the 66 features that appear in `tidy_average.txt`. There are 561 features in the source data but only features whose names contain "mean()" or "std()" are included in `tidy_average.txt`. For a key to interpret the feature names see the *Naming* section below the list.

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

### Naming

*The quoted text below (indented) is from `original_UCI_HAR_data/features_info.txt`*

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
>
> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).
>
> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).
>
> These signals were used to estimate variables of the feature vector for each pattern:\
> '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
>
> tBodyAcc-XYZ\
> tGravityAcc-XYZ\
> tBodyAccJerk-XYZ\
> tBodyGyro-XYZ\
> tBodyGyroJerk-XYZ\
> tBodyAccMag\
> tGravityAccMag\
> tBodyAccJerkMag\
> tBodyGyroMag\
> tBodyGyroJerkMag\
> fBodyAcc-XYZ\
> fBodyAccJerk-XYZ\
> fBodyGyro-XYZ\
> fBodyAccMag\
> fBodyAccJerkMag\
> fBodyGyroMag\
> fBodyGyroJerkMag

A set of variables were estimated from these signals. Only the two variables listed below were used in `tidy_averages.txt`:

-   mean(): Mean value
-   std(): Standard deviation
