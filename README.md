GettingandCleaningData
======================

Download and extract data from the following link.
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


The extracted data are sitting in the working directory, which is the folder "UCI HAR Dataset". Train data and test data are sitting in sub-folders names "train" and "test" respectively. Activity label, features, and features_info are sitting inside the working directory.

The R script to perform the analysis, i.e. run_analysis.R, does the following.

1. Read in train and test data in the subfolders and combine them into one single dataset. Datasets "complete", "complete_label" and "complete_subject" are generated.
2. Extract only mean and standard deviation (std) measurements data from the dataset generated in step 1 above. The rational is as follow.
    a. Get the column indices by looking for keywords "mean" in the variable names
    b. Get the column indices by looking for keywords "std" in the variable names
    c. Combine the above indices. Remove duplicates if needed.
    d. Use the generated indices to extract the columns related to mean and std measurements.
    e. A dataset "step2" is generated.
3. Merge activity label from "activity_labels.txt" to the data set "step2".
4. Using the function gsub to replace shortforms in variable names with a more descriptive ones. E.g. "t" replaced by "Time", "Acc" replaced by Accelerometer" etc.
5. Calculate the mean of all variables by Subject and Activity using the function aggregate.

