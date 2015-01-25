==================================================================
Getting and Cleaning Data Course Project
==================================================================
This code uses the Human Activity Recognition Using Smartphones Datasets.
"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist."
source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
=========================================
The Code and Data
=========================================
The code combines both the training and test datasets.
Then only the variables that are either a mean and standard deviation for each measurements are kepted. 
Next it updates the variable names to give meaning labels.
Finally, it summarizes the data for each participant by their activity and gives the overall mean for each measurement.

To run the code, run the run_analysis.R file within R. 
Use the CodeBook.MD to understand the transformations and variables in the final dataset.

=========================================
This Repo includes the following files:
=========================================

- 'README.MD'
- 'CodeBook.MD'
- 'run_analysis.R'
