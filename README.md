# Getting and Cleaning Data: Course Project

This repository contains data, documentation, and files for the course project of the "Getting and Cleaning Data" course provided on Coursera by Johns Hopkins University.

The project involves processing an existing data set of smartphone sensor data to produce a derived data set that contains the mean values for a subset of the features from the original data. The source data and documentation for this project is from:

> Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

## Repository contents

-   `original_UCI_HAR_data` - The source data set provided as part of the assignment. Includes information about original data collection and variables. The source data is included for reference and reproducibility.
-   `run_analysis.R` - The script that draws from the source data and documentation to produce the derived data set. The script file includes the assignment instructions and notes about how the data is processed.
-   `tidy_averages.txt` - The derived data set, presented as long tidy data with one observation per row and one column containing the calculated means.
-   `CodeBook.md` - A code book with information about the derived data set, including references to original documentation where relevant.
