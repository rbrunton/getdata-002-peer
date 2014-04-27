##Function to actually load the training and testing data. The actions are the same for both
# except for the file names, so a function made sense.
loadData <- function(subject_file, activity_file, data_file) {
    #read the features file
    features <- read.table("features.txt")
    #read the subjects file
    subjects <- read.table(subject_file, col.names=c("subject"))
    #read the activities file
    activities <- read.table(activity_file, col.names=c("activity_code"))
    #generate a factor vector using the activity names
    act.code <- c(WALKING=1,WALKING_UPSTAIRS=2, WALKING_DOWNSTAIRS=3, SITTING=4, STANDING=5, LAYING=6)
    #add a column to the activities table which uses the factor vector and the activity code to get
    #the correct activity name
    activities$activity <- names(act.code)[match(activities$activity_code, act.code)]
    #load the sensor data, and set the column names using the previously loaded feature data
    data_vals <- read.table(data_file, col.names=features[,2])
    #extract the desired mean and standard deviation values using a regular expression
    just_wanted <- data_vals[,grep("(.*-mean\\b)|(.*-std\\b)",features[,2])]
    #column bind the subject, acitivity name, and culled data
    full <- cbind(subjects, activities$activity, just_wanted)
}
#load training data
train <- loadData("train/subject_train.txt", "train/y_train.txt", "train/X_train.txt")
#load test data
test <- loadData("test/subject_test.txt", "test/y_test.txt", "test/X_test.txt")
#row bind the two tables to get the tidy dataset
tidy <- rbind(train, test)
#write the resulting dataset to disk
write.table(tidy,"tidy_data.txt")