# Set the proper working directory

setwd(file.path("C:","Users","Monillas","Desktop","Coursera",
                "Getting and Cleaning Data","UCI HAR Dataset","Submit"))

# Read all necessary files

testobs <- read.table("X_test.txt")
testlabels <- read.table("y_test.txt")
testsubj <- read.table("subject_test.txt")

trainobs <- read.table("X_train.txt")
trainlabels <- read.table("y_train.txt")
trainsubj <- read.table("subject_train.txt")

features <- read.table("features.txt")
actlabels <- read.table("activity_labels.txt")

# Combine the subject names, labels, and observations 

test <- cbind(testsubj, testlabels, testobs)
train <- cbind(trainsubj, trainlabels, trainobs)

# Merge the training and test sets to create one dataset

data <- rbind(train,test)

# Set the proper column names of the dataset

colnames(data) <- c("SubjectID","Activity",as.character(features$V2))

# Change numeric activity labels to activity names

act <- with(data, Activity)
act[act == 1] <- as.character(actlabels[1,2])
act[act == 2] <- as.character(actlabels[2,2])
act[act == 3] <- as.character(actlabels[3,2])
act[act == 4] <- as.character(actlabels[4,2])
act[act == 5] <- as.character(actlabels[5,2])
act[act == 6] <- as.character(actlabels[6,2])
data$Activity <- act

# Extract measurements on mean and standard deviation for each measurement

datamean <- data[,grep("mean()", colnames(data), fixed=TRUE)]
datastd  <- data[,grep("std()",  colnames(data), fixed=TRUE)]
data2 <- cbind(data[,1:2],datamean,datastd)

# Make variable names more programmable and convenient by removing '()' from variable names and capitalizing 'mean' and 'std'

varnames <- gsub("-mean()","Mean",colnames(data2[,3:68]),fixed=TRUE)
varnames <- gsub("-std()","Std",varnames,fixed=TRUE)
varnames <- gsub("-","",varnames,fixed=TRUE)
colnames(data2) <- c("SubjectID","Activity",varnames)

# Create a new dataset with the average of each variable for each activity and each subject

dataclean <- aggregate(data2[,3:68], list(Subject = data2$Subject, 
                                          Activity = data2$Activity), mean)

# Label variable names appropriately

varnames <- gsub("f","AveF",colnames(dataclean[,3:68]),fixed=TRUE)
varnames <- gsub("tB","AveTB",varnames,fixed=TRUE)
varnames <- gsub("tG","AveTG",varnames,fixed=TRUE)
colnames(dataclean) <- c("SubjectID","Activity",varnames)

# Produce a text file with the tidy dataset

write.table(dataclean, file="tidyAverages.txt")

# Check if tidy dataset is actually created

tidy <- read.table("tidyAverages.txt")
