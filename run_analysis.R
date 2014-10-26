## Step 1 - Read in and merge train and test data into one data set



## To read in the following data
## 1) 561 feature data, 2) activity label data, 3) subject data

train <- read.table("./train/X_train.txt")
train_label <- read.table("./train/y_train.txt")
train_subject <- read.table("./train/subject_train.txt")

test <- read.table("./test/X_test.txt")
test_label <- read.table("./test/y_test.txt")
test_subject <- read.table("./test/subject_test.txt")


## To merge the correponding data of train data and test data together

complete <- rbind(train, test)
complete_label <- rbind(train_label, test_label)
complete_subject <- rbind(train_subject, test_subject)


## Replace the column names by using the features.txt provided
## features.txt includes two columns. Use the second column which describe what each variable represents.

feature_names <- read.table("features.txt")

names(complete) <- feature_names[,2]

names(complete_label) <- c("activity_code")

names(complete_subject) <- c("subject_code")



## Step 2 - Extract only mean and std measurements


## Check which variable relates to mean and std by checking for sub-string "mean" and "std" in the variable names.
## The last 7 variables are angle measurements. They are not really mean and std measurements. Remove if exists.

var_mean <- grep("mean", feature_names[,2]) ## indices of variable containing the expression "mean"
var_std <- grep("std", feature_names[,2]) ## similarly for "std"

## Combine the above indices, remove duplicates (if any) and sort in asc order
extraction_indices <- sort(unique(c(var_mean, var_std)))


## Extract only measurements on mean and std for each measurement
step2 <- complete[, extraction_indices]



## Step 3 - Descriptive activity label

## Read in the activity label txt
activity_label <- read.table("activity_labels.txt")
names(activity_label) <- c("activity_code", "activity_description")

## Merge the activity description into complete label. NO sorting!
complete_label <- merge(complete_label, activity_label, by.x="activity_code", by.y="activity_code", sort=FALSE)

## Merge the complete, label and subject datasets toegher
step3 <- cbind(step2, complete_label, complete_subject)




## Step 4 - label the data set with descriptive variable names


## Create a vector of current names. Use gsub function to make it more descriptive.
current_names <- names(step3)

revised_names <- gsub("tBody", "Time Domain Signals Body ", current_names)
revised_names <- gsub("tGravity", "Time Domain Signals Gravity ", revised_names)
revised_names <- gsub("fBody", "Frequency Domain Signals Body ", revised_names)
revised_names <- gsub("Acc", "Accelerometer ", revised_names)
revised_names <- gsub("Gyro", "Gyroscope ", revised_names)

names(step3) <- revised_names

step4 <- step3[, !(names(step3) %in% c("activity_code"))] ## remove activity_code as it repeat info of activity_description



## Step 5 - Calculate average of each variable for each activity and subject

step5 <- aggregate( .~ subject_code + activity_description, step4, mean)
step5 <- step5[with(step5, order(subject_code, activity_description)),]

## Export the tidy data set using write.table()

write.table(step5, file="step5.txt", row.name=FALSE)

