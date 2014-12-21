Experiments & dataset
=============================

The experiments conducted have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 


The variables contained in the tidy data 
=========================================

For each record in the raw dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

In the tidy datset, we have used the following signals from the data:
'-{XYZ}' is used to denote 3-axial signals in the X, Y and Z directions (so tBodyAcc-{XYZ} means three signals,tBodyAcc-X, tBodyAcc-Y, tBodyAcc-Z).

- tBodyAcc-{XYZ}
- tGravityAcc-{XYZ}
- tBodyAccJerk-{XYZ}
- tBodyGyro-{XYZ}
- tBodyGyroJerk-{XYZ}
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-{XYZ}
- fBodyAccJerk-{XYZ}
- fBodyGyro-{XYZ}
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

For these signals, we used only the

- mean(): Mean value
- std(): Standard deviation

, resulting in 66 variables in total. 

Finally, we estimate the average of each variable for each of the 6 activities and for each of the 30 subjects.


transformation details
======================

- Merge the training and the test sets to create three sets: X, y, subject
- Extract only the measurements on the mean and standard deviation for each measurement 
- Use descriptive activity names to name the activities in the data set according to the activity_labels.txt file
- Appropriately label the data set with descriptive variable names according to the features.txt file
- Merge the three sets into one set: data
- Create the independent tidy data set by applying the average for each activity and each subject on each remaining variable.

