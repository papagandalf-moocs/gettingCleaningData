gettingCleaningData
===================

project repo for assignment in coursera course "Getting and Cleaning Data"

## assignment description
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

You should create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## the raw dataset
The dataset contains data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## the tidy dataset
The tidy dataset that will be generated from the script (also stored in ```tidy_data.txt``` file) contains average of each of a subset of the dataset variables for each activity and each subject.

## how to work
1. download the data from the link described above (or use the data.zip in this repo)
2. extract the .zip file (you will have a ```UCI HAR Dataset``` folder
3. put the ```run_analysis.R``` file in the ```UCI HAR dataset``` folder
4. open RStudio, or R interpreter, set the afformentioned dir as your working dir with ```setwd()```
5. run the script by ```source("./run_analysis.R")``` and it will generate a ```tidy_set.txt``` file with the tidy data
