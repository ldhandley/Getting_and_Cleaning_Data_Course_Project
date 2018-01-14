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
General description of the file including:
 - Dimensions of the dataset
 - Summary of the data
 - Variables present in the dataset

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

###Variable 1 (repeat this section for all variables in the dataset)
Short description of what the variable describes.

Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

####Notes on variable 1:
If available, some additional notes on the variable not covered elsewehere. If no notes are present leave this section out.

##Sources
Sources you used if any, otherise leave out.

##Annex
If you used any code in the codebook that had the echo=FALSE attribute post this here (make sure you set the results parameter to 'hide' as you do not want the results to show again)
