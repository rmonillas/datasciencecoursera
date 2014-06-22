README
========================================================

This file will explain the thought and scripting process behind the course project in Coursera's "Getting and Cleaning Data".

Along with this markdown document, you should see the R script __run_analysis.R__ that accomplishes the task of creating the resulting dataset and the markdown document __CodeBook.md__ that describes the data used in the script.

Now let's run through the R script:

#### Set the proper working directory

After unzipping the downloaded zip file, we notice that the folder __UCI HAR Dataset__ contains documents and subfolders, which contain more documents and subfolders. To simplify the reading process, we take all the documents from the subfolders and copy them to the main folder. Then we set the main folder as the working directory.

#### Read all necessary files

We load almost all the text files to R except for the unnecessary ones, which we determine after we have read and anazlyed the instruction list for the course 
project. We familiarize ourselves with the other text files and examine their purpose in our project. 

#### Combine the subject names, labels, and observations 

We notice that in the test files alone, test subjects contain 2947 observations of 1 variable, test labels contain 2947 observations of 1 variable, and test observations contain 2947 observations of 561 variables. In the training files, we have 7352 observations instaed of 2947. The only way to combine the test files alone that make sense is to bind them column-wise: subjects to labels to observations. We repeat for training files.

#### Merge the training and test sets to create one dataset

Since the training set and test set are mutually exclusive in terms of subjects and labels, we bind them together row-wise, amounting to a total of 10299 different observations.

#### Set the proper column names of the dataset

We know that we have to change the column names of the new merged dataset. We know the first column to contain the subject ID, the second column to contain activity labels, and the rest of 561 columns to contain the various variables. We realize that the 561 variables are various features presented in the __feature_info.txt__.

#### Change numeric activity labels to activity names

We use descriptive activity names from the __activity_labels.txt__ file to name the activities in the dataset. We may not have followed the exact order of the instruction list, but it doesn't matter in this case.

#### Extract measurements on mean and standard deviation for each measurement

We utilize regular expressions to extract only the measurements and standard deviations for each measurement and then combine them with the corresponding subjects and activities.

#### Make variable names more programmable and convenient by removing '()' from variable names and capitalizing 'mean' and 'std'

We create a character vector called __varnames__ that contains all the relevant feature names. We remove any non-letters to make it convenient for future users of the dataset. For example, if a data analyst wants to extract a specific column from the new dataset but he doesn't know the index number of that column, he would call the column by __dataset$tBodyAcc-mean()-XYZ__. This would cause an error in R and therefore would have to be renamed by the data analyst himself. We also capitalize __mean__ and __std__ to emphasize their presence in the column data (BodyJerkMean instead of BodyJerkmean).

#### Create a new dataset with the average of each variable for each activity and each subject

We call __aggregate__ to split the data into subsets (by subject and by activity) and compute the mean for each. This produces the resulting tidy dataset that we want.

#### Label variable names appropriately

For aesthetic and emphasis purposes, we modify the variable names in the tidy dataset to explain that these columns contain averages of values.

#### Produce a text file with the tidy dataset

We call a function to write the tidy dataset into a text file. This is what we submit to Coursera.

#### Check if tidy dataset is actually created

It doesn't hurt to check if our resulting dataset actually did get created, does it?



