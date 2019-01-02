Coursera – Data Science
Getting and Cleaning Data- Project for Week-4
This repository contains the assignment for week 4 project of Getting and Cleaning Data Coursera course.
Data description
The source file provided for the assignment contains training and test data of different activities performed by 30 people from accelerometers of Samsung Galaxy S smart phones. A full description is available as the site where the data is collected.
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

R Script: run_analysis.R
The script contains the program that does the following.
1.	Unloaded and unzipped source data files into current directory which contains measurements, activities performed, the subjected who did the         
    activities and the kind of measurements performed for both training and test data
2.	Merges subjects id from training and test results..
3.	Merges activities types from training and test results.
4.	Merge measurements from training and test.
5.	Label measurements with descriptive variable names.
6.	Extracts only the measurements on the mean and standard deviation from the measurements
7.	Merge all the subjects, activities and measurements from Step 6 together
8.	Creates 'wide' tidy data set called TidyData that contains a single row for each activity and subject combination and a single column for each
    variable mean value.
9.	Order the data set by subject ID and subject activity and save result in current directory.

CodeBook.md
A code book that describes the variables, the data, and transformations used to tidy the data.
TidyData
A text file that contained variables calculated based on the mean and standard deviation. Each row of the dataset is an average of each activity type for all subjects.
