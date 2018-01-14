library(dplyr)
library(reshape2)

##LOAD AND MERGE TEST DATA
##
##Load "subject_test.txt" and label columns
subject_test <- read.table("./Raw Datasets/test/subject_test.txt")
names(subject_test) <- c("subjectnumber")

##Load "X_test.txt", label columns, and keeps only mean/std data
x_test <- read.table("./Raw Datasets/test/X_test.txt")
features <- read.table("./Raw Datasets/features.txt")
names(x_test) <- features[,2]                         ##Labels x_test columns by features in features.txt
x_test <- x_test[,grepl("mean|std",names(x_test))]    ##Keeps only columns that have "means" or "std" in variable name

##Load "Y_test.txt", label columns, and keeps only mean/std data
y_test <- read.table("./Raw Datasets/test/Y_test.txt")
names(y_test) <- c("activitynumber")
activity_labels <- read.table("./Raw Datasets/activity_labels.txt")
names(activity_labels) <- c("activityid","activityname")
y_test <- mutate(y_test,activityname = activity_labels[activitynumber,2])   ##Creates new column with activity labels
y_test <- select(y_test,-activitynumber)  ##Removes activitynumbers column

#Merge test data tables
merged_test <- cbind(subject_test, y_test, x_test)



##LOAD AND MERGE TRAINING DATA
##
##Load "subject_train.txt" and label columns
subject_train <- read.table("./Raw Datasets/train/subject_train.txt")
names(subject_train) <- c("subjectnumber")

##Load "X_train.txt", label columns, and keeps only mean/std data
x_train <- read.table("./Raw Datasets/train/X_train.txt")
features <- read.table("./Raw Datasets/features.txt")
names(x_train) <- features[,2]                         ##Labels x_test columns by features in features.txt
x_train <- x_train[,grepl("mean|std",names(x_train))]    ##Keeps only columns that have "means" or "std" in variable name

##Load "Y_train.txt", label columns, and keeps only mean/std data
y_train <- read.table("./Raw Datasets/train/Y_train.txt")
names(y_train) <- c("activitynumber")
activity_labels <- read.table("./Raw Datasets/activity_labels.txt")
names(activity_labels) <- c("activityid","activityname")
y_train <- mutate(y_train,activityname = activity_labels[activitynumber,2])   ##Creates new column with activity labels
y_train <- select(y_train,-activitynumber)  ##Removes activitynumbers column

#Merge training data tables
merged_train <- cbind(subject_train, y_train, x_train)


##COMBINE TESTING AND TRAINING DATA TABLES
all_data <- rbind(merged_test,merged_train)

##CLEAN UP VARIABLE NAMES
names(all_data) <- tolower(names(all_data)) ##Lowercase everything
names(all_data) <- gsub("-","", names(all_data))
names(all_data) <- gsub("\\()","", names(all_data))
names(all_data) <- sub("^f","freq", names(all_data))
names(all_data) <- sub("^t","time", names(all_data))

##1ST TIDY DATASET: all_data is now a tidy dataset!

##2ND, INDEPENDENT TIDY DATASET: tidy_data is a more compact tidy dataset
melt_data <- melt(all_data, id.vars = c("subjectnumber", "activityname"))
tidy_data <- dcast(melt_data, subjectnumber + activityname ~ variable, fun.aggregate = mean)

##Write tidy datasets to files
if (!file.exists("Tidy Datasets")) {
  dir.create("Tidy Datasets")
}
write.csv(all_data,"Tidy Datasets/all-data.csv")
write.csv(tidy_data,"Tidy Datasets/averaged-data.csv")