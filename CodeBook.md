==================================================================
Code Book
==================================================================
This file breaks down the transformations completed on the raw data to obtain the final output.

==================================================================
Raw Data
==================================================================
Raw data was provided by: 
Human Activity Recognition Using Smartphones Dataset Included the following Files.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

==================================================================
Processed Data
==================================================================
Combined all the data together, training and test, to have open dataset.
Then grouped by each subject and each activity.
Created an over all average for relevant variables.
Only kepted variables that were the overall mean and standard deviation for each measure.

Below are all the variables in the final tidy dataset output.

-subjectID: 30 subjects in the study               
-activitydescriptive: factor 6 levels 1 = Walking, 2 = Walking Upstairs, 3 = Walking Downstairs, 4 = Sitting, 5 = Standing, 6 = Laying Down    
-activityID: Aligns with the descriptive for the activity              
-tBodyAccMagmean: Average of BodyAccMagmean for each subject         
-tBodyAccMagstd: Average of BodyAccMagstd for each subject
-tGravityAccMagmean: Average of GravityAccMagmean for each subject      
-tGravityAccMagstd: Average of GravityAccMagstd for each subject       
-tBodyAccJerkMagmean: Average of BodyAccJerkMagmeann for each subject     
-tBodyAccJerkMagstd: Average of BodyAccJerkMagstd for each subject        
-tBodyGyroMagmean: Average of BodyGyroMagmean for each subject        
-tBodyGyroMagstd: Average of BodyGyroMagstd for each subject           
-tBodyGyroJerkMagmean: Average of BodyGyroJerkMagmean for each subject    
-tBodyGyroJerkMagstd: Average of BodyGyroJerkMagstd for each subject       
-fBodyAccMagmean: Average of BodyAccMagmean for each subject         
-fBodyAccMagstd: Average of BodyAccMagstd for each subject           
-fBodyBodyAccJerkMagmean: Average of BodyBodyAccJerkMagmean for each subject 
-fBodyBodyAccJerkMagstd: Average of BodyBodyGyroMagstd for each subject    
-fBodyBodyGyroMagmean: Average of BodyBodyGyroMagmean for each subject    
-fBodyBodyGyroMagstd: Average of BodyBodyGyroMagstd for each subject     
-fBodyBodyGyroJerkMagmean: Average of BodyBodyGyroJerkMagmean for each subject
-fBodyBodyGyroJerkMagstd: Average of BodyBodyGyroJerkMagstd for each subject
