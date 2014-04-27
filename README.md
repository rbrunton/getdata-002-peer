#Getting and Cleaning Data: Peer Assessed Assignment

##Purpose

The assignment is to create a tidy dataset from data pulled from the UCI Machine Learning Repository. The provided dataset tracks numerous sensor readings from Samsung Galaxy S2 phones worn at the waist by 30 study volunteers. For the purposes of this assignment, "tidy dataset" is defined as:

* A single dataset combining the originally separate test and training data sets.
* A dataset with descriptive activity names rather than the simple codes orginally in the data.
* A dataset containing only the mean and standard deviation values for each of the measurements.

##Files

* README.cmd: this file
* run_analysis.R: the script which reads the existing UCI HAR Dataset files and generates the tidy dataset
* CodeBook.md: a description of the data, variables, and transformations used by run_analysis.R.

##Running

The included script, "run_analysis.R", requires the UCI HAR Dataset to be present and set as the current working directory (use setwd within R if this is not the case). As a result of running the script, the tidy dataset will be written to disk as the file "tidy_data.csv" in the working directory.

