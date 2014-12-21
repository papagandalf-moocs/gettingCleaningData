# install the necessary packages if they are not 
# already installed
if (!require("reshape2")) {
  install.packages("reshape2")
}
require("reshape2")


# read the labels of the activities
activityLabels <- read.table("./activity_labels.txt")
activityLabels <- activityLabels[,2]

# read the features from the corresponding file
# and make a list of those that contain "mean(" or "std("
features <- read.table("./features.txt")
featureList <- grep("mean\\(|std\\(", featureNames[,2])

#1: read train and test data and merge them for X, y and subject files
X_train <- read.table("./train/X_train.txt")
X_test <- read.table("./test/X_test.txt")
X <- rbind(X_train, X_test)
y_train <- read.table("train/y_train.txt")
y_test <- read.table("test/y_test.txt")
y <- data.frame(rbind(y_train, y_test))
subject_train <- read.table("train/subject_train.txt")
subject_test <- read.table("test/subject_test.txt")
subject <- data.frame(rbind(subject_train, subject_test))

#2: keep only the measurements of mean and std which we are 
# intersted in
X <- X[,featureList]

#3: replace y values with the corresponding (descriptive) activity names
yNames <- data.frame(activityLabels[y[,1]])

#4: set the appropriate (descriptive) labels
colnames(X) <- features[featureList,2]
colnames(yNames) <- c("activity")
colnames(subject) <- c("subject")

# merge all the data together
data <- cbind(subject, X, yNames)

#5: create a second, independent data set with the average of each variable 
# for each activity and each subject

keys <- c("subject", "activity")
dataLabels <- setdiff(colnames(data), keys)
dataFinal <- melt(data, id = keys, measure.vars = dataLabels)
tidyData <- dcast(dataFinal, subject + activity ~ variable, mean)
# write the final, tidy data set to a file
write.table(tidyData, file = "./tidy_data.txt", row.name=FALSE, sep="\t")
