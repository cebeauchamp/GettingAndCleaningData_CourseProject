#Course Project Getting and Cleaning Data

#Read in all the data
testdata <- read.table("X_test.txt")
traindata <- read.table("X_train.txt")
testlabel <- read.table("y_test.txt")
trainlabel <- read.table("y_train.txt")
features <- read.table("features.txt")
subjecttest <- read.table("subject_test.txt")
subjecttrain <- read.table("subject_train.txt")
activitylabel <-read.table("activity_labels.txt")

#Step 1 Merges the training and the test sets to create one data set
##Step 1.a Combine all of test files into one
testfinal <- cbind(subjecttest, testlabel, testdata)
##Step 1.b Combine all of train files into one
trainfinal <- cbind(subjecttrain, trainlabel, traindata)
##Step 1.c Combine train and test together
test_train_combine <- rbind(testfinal,trainfinal)

#Step 2 Extracts only the measurements on the mean and standard deviation for each measurement
mean_std_var <- features[grep("mean\\(\\)$|std\\(\\)$",features$V2),]
sub_combine <- test_train_combine[,c(1,2,mean_std_var$V1+2)]

#Step 3 Uses descriptive activity names to name the activities in the data set
sub_combine_label <- merge(activitylabel,sub_combine,by.x="V1",by.y="V1.1")

#Step 4 Appropriately labels the data set with descriptive variable names
mean_std_var$V3 <- gsub("-","",mean_std_var$V2)
mean_std_var$V4 <- gsub("\\(\\)","",mean_std_var$V3)
colnames(sub_combine_label) <- c("activityID", "activitydescriptive", "subjectID", as.character(mean_std_var$V4))

#Step 5 creates a second, independent tidy data set with the average of each variable for each activity and each subject.
install.packages('dplyr')
library('dplyr')
group_subjects <- group_by(sub_combine_label, subjectID, activitydescriptive)
final_tidy <- summarise_each(group_subjects,funs(mean))

#Final Step Write table to .txt
write.table(final_tidy,"tidydata.txt",row.name=FALSE)

#output of tidy data
final_tidy