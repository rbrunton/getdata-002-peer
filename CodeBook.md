#Code book for Getting and Cleaning Data Peer Assessed Assignment

##The Data

The data utilized is that provided by the course professor and sourced from the UCI Machine Learning Repository. It is titled "Human Activity Recognition Using Smartphones Data Set".

##Variables

The variables in the data consist of various smartphone sensor readings from a Galaxy S2 smartphone that the 30 study participants wore at their waists. Specific information on each of the variables and how the data for each was collected or calculated can be found in the "features_info.txt" file included with the source dataset. For the purposes of this assignment, only the mean and standard deviation variables for each sensor reading are present in the final, tidy dataset. 

##Transformations 

The original HAR dataset was transformed as part of the assignment in the following ways:

* The original dataset had many calculated statistics for each measured variable. The tidy dataset culls all but the mean and standard deviation.
* The original dataset separated test and training data. The tidy dataset combines both into a single dataset.
* The original dataset utilized codes for activities in the data. The tidy dataset substitutes the activity names as found in the "activity_labels.txt" file found in the original dataset.
* The original dataset did not include the subject id with the measurement data, but rather recorded the subject information in a separate file. The tidy dataset includes the subject id in each row of measurements.
