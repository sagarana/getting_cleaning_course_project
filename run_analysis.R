# This script processes sensor data data collected from the accelerometers 
# of Samsung Galaxy S smartphones. The source data and documentation is available from
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
#
# A copy of the source data is saved in the "original_UCI_HAR_data" directory
# of the GitHub repository (https://github.com/sagarana/getting_cleaning_course_project). 
# This script processes the source data following the Course Project instructions 
# for the Coursera course "Getting and Cleaning Data":
# 
#   1. Merge the training and the test sets to create one data set
#   2. Extract only the measurements on the mean and standard deviation for each 
#      measurement
#   3. Use descriptive activity names to name the activities in the data set
#   4. Appropriately label the data set with descriptive variable names
#   5. From the data set in step 4, create a second, independent tidy data set 
#      with the average of each variable for each activity and each subject
#
# The tidy data set created in step 5 is saved as `tidy_averages.txt` and
# consists of 11880 observations of 4 variables. See `Codebook.md` for more
# information about the tidy_averages data set.
#
# The instructions indicate that the tidy data set may be "long" or "wide." 
# This script creates a long data set, where the calculated means are all contained
# in one column, with the corresponding feature name in another column.
#
# The source data, processing script, code book, and output are available in 
# GitHub at https://github.com/sagarana/getting_cleaning_course_project.
# The script assumes that the R working directory is set to the top-level 
# directory of the GitHub repository.

library(tidyr)
library(dplyr)

# Step 1: Merge the training and the test sets to create one data set

# 1.1 - Read and combine all test data, save as `test`
y_test <- read.table("original_UCI_HAR_data/test/y_test.txt",
                     header=FALSE, colClasses="factor")
subject_test <- read.table("original_UCI_HAR_data/test/subject_test.txt",
                           header=FALSE, colClasses="factor")
X_test <- read.table("original_UCI_HAR_data/test/X_test.txt",
                     header=FALSE)

test <- cbind(y_test, subject_test, X_test)


# 1.2 - Read and combine all training data, save as `train`
y_train <- read.table("original_UCI_HAR_data/train/y_train.txt",
                     header=FALSE, colClasses="factor")
subject_train <- read.table("original_UCI_HAR_data/train/subject_train.txt",
                           header=FALSE, colClasses="factor")
X_train <- read.table("original_UCI_HAR_data/train/X_train.txt",
                     header=FALSE)

train <- cbind(y_train, subject_train, X_train)


# 1.3 - Combine test and training data, save as `data`
data <- rbind(test, train)


# Step 2: Extract only the measurements on the mean and standard deviation for each measurement

# 2.1 - Apply labels to all variables
feature_names <- read.table("original_UCI_HAR_data/features.txt") # get feature labels
names(data) <- c("activity", "subject", feature_names[,2]) # apply labels to combined data

# 2.2 - Keep only variables that have `mean()` or `std()` in the variable name
data_subset <- select(data, activity, subject, matches("mean\\(\\)|std\\(\\)"))


# Step 3: Use descriptive activity names to name the activities in the data set

activity_names <- read.table("original_UCI_HAR_data/activity_labels.txt") # get activity names
levels(data_subset$activity) <- activity_names[,2] # assign names to activity factor levels


# Step 4: Appropriately label the data set with descriptive variable names



### This was already done in step 2.1 ###

# Step 5: From the data set in step 4, create a second, independent tidy data set
# with the average of each variable for each activity and each subject

tidy_averages <- data_subset %>%
              pivot_longer(cols=!(activity:subject),
                           names_to = "variable",
                           values_to = "value") %>%
              group_by(activity, subject, variable) %>%
              summarize(mean = mean(value), .groups="keep")

write.table(tidy_averages, "tidy_averages.txt", row.names = FALSE)
