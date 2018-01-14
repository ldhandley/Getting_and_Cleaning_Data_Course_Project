# Getting_and_Cleaning_Data_Course_Project
This repository contains my submission to the Getting & Cleaning Data course peer-reviewed assignment. This course on Coursera can be found at: https://www.coursera.org/learn/data-cleaning

## The Problem
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Repository Contents
<table>
<tr><th>File Name</th><th>Description</th></tr>
<tr><td valign=top>README.md</td><td>Documentation explaining the project and how to use files contained in the repository.</td></tr>
<tr><td valign=top>Raw Datasets</td><td>A folder containing the original "Human Activity Recognition Using Smartphones Dataset" dataset from Jorge L. Reyes-Ortiz, et al. This data is used to generate the Tidy Datasets folder by running the run_analysis.R script.</td></tr>
<tr><td valign=top>Tidy Datasets</td><td>A folder containing the final tiny datasets for this project. There are two tidy data sets included in this folder: (1) all-data.csv, which contains the complete dataset, and (2) averaged-data.csv, which summarizes all-data.csv by averaging each variable for each activity and each subject.</td></tr>
<tr><td valign=top>run_analysis.R</td><td>An R script which processes the raw datasets to the tidy datasets.</td></tr>
<tr><td valign=top>CodeBook.md</td><td>A code book that describes the variables, the data, and any transformations or work performed to clean up the data.</td></tr>
</table> 

## The Process
In order to generate the Tidy Datasets folder with the two final datasets, all-data.csv and averaged-data.csv, just run the run_analysis.R script. No other data processing steps are necessary. Refer to CodeBook.md for descriptions of the variables, the data, and specifics about the transformations performed to clean up the raw data.

In short, the run_analysis.R script performs the following steps:
1. It reads in the three test datasets, subject_test.txt, X_test.txt, and Y_test.txt. The appropriate column names are applied to these datasets and they are all combined. It also replaces activityname values, which were originally defined as numbers 1-6 for the 6 different activities studied, with descriptive activity names.
2. An identical processing procedure is used to read in, make more descriptive, and combine the subject_train.txt, X_train.txt, and Y_train.txt datasets.
3. Then, the training and testing data sets are merged. Substitution is used to tidy up the variable names to remove dashes and parentheses, as well as make the names more descriptive. This data is written out to "all_data.csv" in the Tidy Datasets folder.
4. The merged dataset is summarized further by melting and dcasting the data frame so that it gives only the average of each variable for each activity and each subject. This data is written out to the "averaged-data.csv" in the Tidy Datasets folder. 
