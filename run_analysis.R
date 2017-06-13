# This script was created to read, clean and output a final file containing the tidy data that sums up the data presented in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Read the column names from the file features.txt and keeps its names
nomes <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
col.names <- as.list(nomes[,2])


# Read the test and train data from the cols containing the string mean or std, considered relevant for the task
completo.teste <- read.table("UCI HAR Dataset/test/X_test.txt", col.names=col.names)
library("dplyr")
teste <- select(completo, matches("mean|std", ignore.case = F))
teste <- select(teste, -contains("meanFreq"))
completo.train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names=col.names)
train <- select(completo.train, matches("mean|std", ignore.case = F))
train <- select(train, -contains("meanFreq"))

# Add activity labels and subjects to the test and train data
teste['activity'] <-readLines("UCI HAR Dataset/test/y_test.txt")
train['activity'] <- readLines("UCI HAR Dataset/train/y_train.txt")
teste['subject'] <- readLines("UCI HAR Dataset/test/subject_test.txt")
train['subject'] <- readLines("UCI HAR Dataset/train/subject_train.txt")

# Merge teste and train data into one frame
dados.combinados <- rbind(train, test)

# Resolve activity labels (convert numbers into labels)
activity.labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names=c("activity", "activity_label"))
dados.completos <- merge(dados.combinados, activity.labels)
dados.completos <- select(dados.completos, -activity)
# Write values for each measurement per activity and subject into a clean dataset
library("data.table")
tabela.final <- data.table(dados.completos)
arquivo.final <- tabela.final[, lapply(.SD, mean), by=list(activity_label, subject)]
# Write table into a file
write.table(arquivo.final, "arquivo_final.txt", row.name=FALSE)
