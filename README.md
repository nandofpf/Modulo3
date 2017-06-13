The data must be present in a folder called UCI HAR Dataset

How the R script does the job

1 - Read the file test/X_test.txt using the labels from features.txt and filtering the columns containing mean or std in the column name
2 - Read the file train/X_train.txt using the labels from features.txt and filtering the columns containing mean or std in the column name
3 - Add the activity headers for both files
4 - Add the subject information for both files
5 - Merge whole data into one object using rbind
6 - Resolve the activity labels (convert numbers into text labels) 
7 - Calculate the averages for each measurement by subject and activity
8 - Write the result to a file
