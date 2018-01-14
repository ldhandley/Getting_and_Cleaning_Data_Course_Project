---
title: "Codebook for Getting and Cleaning Data Course Project"
author: "Lindsey D Handley, PhD"
date: "14 January 2018"
output:
  html_document:
    keep_md: yes
---

## Project Description
In this project, we have been asked to merge and clean up a dataset collected from the accelerometers of 30 different participants wearing the Samsung Galaxy S smartphone.

## Study Design and Data Processing

### Collection of the Raw Data
Data were collected by researchers at SmartLab, one of the Research Laboratories at the DIBRIS Departments of the University of Genova. Researchers were: Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. A description of the collection of data was provided with the raw dataset:
> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

### Notes on Raw Data 
The original dataset, called Human Activity Recognition Using Smartphones Dataset, Version 1.0, can be downloaded here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Creating the Tidy Datafile

### Guide to Create the Tidy Data File
The procedure for creating the tidy data file from the raw data files is relatively simple:
1. Download the raw datafiles from here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Put raw datafiles in appropriate working directory and rename unzipped folder "Raw Datasets". Note: this is important because the script references this directory name.
3. Run the "run_analysis.R" in the same working directory that contains the "Raw Datasets" folder.
4. This script will produce a Tidy Datasets folder with two tidy dataset csv files included: all_data.csv and averaged_data.csv

### Cleaning of the Data
The run_analysis.R script is well described in the [README](https://github.com/ldhandley/Getting_and_Cleaning_Data_Course_Project#the-process). Briefly, the run_analysis.R script combines the test and training datasets, after appropriately labeling all columns and cleaning up variable names. This produces the all_data.csv file. Further processing is used to summarize the data by the mean value for each subject for each activity in the averaged_data.csv file. 

## Description of the Variables in the all_data.csv file

### General Description
 - Dimensions: this dataset is 10299 observations (rows) of  81 variables (columns) 
 - Summary of the data: the data identify subjectnumber (of 30 subjects) and activityname (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING), along with 79 different measurements made by the Samsung Galaxy S II accelerometer and gyroscope (mean and standard deviation values).  
 - All variables in the data will be described below: 

### subjectnumber
Thirty (30) subjects participated in this study. Each of those participants was given a number 1-30.
 - Class: integer
 - Unique values/levels of the variable: 1-30
 - Unit of measurement: none

## Sources
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
