<h1>Coursera – Data Science</h1>
<h2>Getting and Cleaning Data- Project for Week-4</h2>
This repository contains the assignment for week 4 project of Getting and Cleaning Data Coursera course.
<h2>Data description</h2>
The source file provided for the assignment contains training and test data of different activities performed by 30 people from accelerometers of Samsung Galaxy S smart phones. A full description is available as the site where the data is collected.<br>
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones<br>
Here are the data for the project:<br>
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip<br>

<h2>R Script: run_analysis.R</h2>
The script contains the program that does the following.<br>
1.	Unloaded and unzipped source data files into current directory which contains measurements, activities performed, the subjected who did the activities and the kind of measurements performed for both training and test data.<br>
2.	Merges subjects id from training and test results.<br>
3.	Merges activities types from training and test results.<br>
4.	Merge measurements from training and test.<br>
5.	Label measurements with descriptive variable names.<br>
6.	Extracts only the measurements on the mean and standard deviation from the measurements.<br>
7.	Merge all the subjects, activities and measurements from Step 6 together.<br>
8.	Creates 'wide' tidy data set called TidyData that contains a single row for each activity and subject combination and a single column for each variable mean value.<br>
9.	Order the data set by subject ID and subject activity and save result in current directory.<br>

<h2>CodeBook.md</h2>
A code book that describes the variables, the data, and transformations used to tidy the data.
<h2>TidyData</h2>
A text file that contained variables calculated based on the mean and standard deviation. Each row of the dataset is an average of each activity type for all subjects.
