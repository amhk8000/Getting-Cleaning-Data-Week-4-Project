<h1>Coursera – Data Science</h1>
<h2>Getting and Cleaning Data- Project for Week-4</h2>
This repository contains the assignment for week 4 project of Getting and Cleaning Data Coursera course.
<h2>Data description</h2>
The source file provided for the assignment contains training and test data of different activities performed by 30 people on accelerometers of Samsung Galaxy S smart phones. A full description is available as the site where the data is collected.<br>
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones<br>
Here are the data for the project:<br>
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip<br>

<h2>R Script: run_analysis.R</h2>
The script does the following<br>
1.	Unloades and unzippes source data files, which contains measurements types, activities performed,   and subjectes who did the activities. Measurements contain tranining and test data.<br>
2.	Merges subjects id from training and test results.<br>
3.	Merges activities types from training and test results.<br>
4.	Merges measurements from training and test.<br>
5.	Labels measurements with descriptive variable names.<br>
6.	Extracts only the measurements on the mean and standard deviation from the merged measurements.<br>
7.	Merges all the subjects, activities and measurements from Step 6 together into one.<br>
8.	Creates tidy data set called TidySet that contains a single row for each subject per activity and  a       single column for each variable mean value.<br>
9.	Orders the data set by subject ID and subject activity and save result in current directory.<br>

<h2>CodeBook.md</h2>
A code book that describes the variables, the data, and transformations used to TidySet.
<h2>TidySet</h2>
A text file that contained variables calculated based on the mean and standard deviation. Each row of the dataset is an average of each activity type for all subjects.
