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
 - Unique values/levels of the variable: all integers between 1-30
 - Unit of measurement: none

### activityname 
Participants were recorded while performing 6 different activities.
 - Class: factor
 - Unique values/levels of the variable: 6 levels are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING 
 - Unit of measurement: none

### timebodyaccmeanx 
Mean body acceleration signal in the time domain along the X direction 
 - Class: number
 - Unit of measurement: seconds

### timebodyaccmeanx 
Mean body acceleration signal in the time domain along the Y direction 
 - Class: number
 - Unit of measurement: seconds

### timebodyaccmeanz
Mean body acceleration signal in the time domain along the Z direction 
 - Class: number
 - Unit of measurement: seconds

### timebodyaccstdx 
Standard deviation of body acceleration signal in the time domain along the X direction 
 - Class: number
 - Unit of measurement: seconds

### timebodyaccstdy
Standard deviation of body acceleration signal in the time domain along the Y direction 
 - Class: number
 - Unit of measurement: seconds

### timebodyaccstdz
Standard deviation of body acceleration signal in the time domain along the Z direction 
 - Class: number
 - Unit of measurement: seconds

### timegravityaccmeanx 
Mean gravity acceleration signal in the time domain along the X direction 
 - Class: number
 - Unit of measurement: seconds

### timegravityaccmeany 
Mean gravity acceleration signal in the time domain along the Y direction 
 - Class: number
 - Unit of measurement: seconds

### timegravityaccmeanz 
Mean gravity acceleration signal in the time domain along the Z direction 
 - Class: number
 - Unit of measurement: seconds

### timegravityaccstdx 
Standard deviation of gravity acceleration signal in the time domain along the X direction 
 - Class: number
 - Unit of measurement: seconds

### timegravityaccstdy 
Standard deviation of gravity acceleration signal in the time domain along the Y direction 
 - Class: number
 - Unit of measurement: seconds

### timegravityaccstdz
Standard deviation of gravity acceleration signal in the time domain along the Z direction 
 - Class: number
 - Unit of measurement: seconds

### timebodyaccjerkmeanx 
Mean jerk signal derived from body acceleration signal in the time domain along the X direction 
 - Class: number
 - Unit of measurement: seconds

### timebodyaccjerkmeany  
Mean jerk signal derived from body acceleration signal in the time domain along the Y direction 
 - Class: number
 - Unit of measurement: seconds

### timebodyaccjerkmeanz  
Mean jerk signal derived from body acceleration signal in the time domain along the Z direction 
 - Class: number
 - Unit of measurement: seconds

### timebodyaccjerkstdx  
Standard deviation of the jerk signal derived from body acceleration signal in the time domain along the X direction 
 - Class: number
 - Unit of measurement: seconds

### timebodyaccjerkstdy  
Standard deviation of the jerk signal derived from body acceleration signal in the time domain along the Y direction 
 - Class: number
 - Unit of measurement: seconds

### timebodyaccjerkstdz  
Standard deviation of the jerk signal derived from body acceleration signal in the time domain along the Z direction 
 - Class: number
 - Unit of measurement: seconds

### timebodygyromeanx  
Mean body gyroscope signal in the time domain along the X direction 
 - Class: number
 - Unit of measurement: seconds

### timebodygyromeany  
Mean body gyroscope signal in the time domain along the Y direction 
 - Class: number
 - Unit of measurement: seconds

### timebodygyromeanz  
Mean body gyroscope signal in the time domain along the Z direction 
 - Class: number
 - Unit of measurement: seconds

### timebodygyrostdx 
Standard deviation of body gyroscope signal in the time domain along the X direction 
 - Class: number
 - Unit of measurement: seconds

### timebodygyrostdy 
Standard deviation of body gyroscope signal in the time domain along the Y direction 
 - Class: number
 - Unit of measurement: seconds

### timebodygyrostdz 
Standard deviation of body gyroscope signal in the time domain along the Z direction 
 - Class: number
 - Unit of measurement: seconds

### timebodygyrojerkmeanx 
Mean of the jerk signal derived from the body gyroscope signal in the time domain along the X direction 
 - Class: number
 - Unit of measurement: seconds

### timebodygyrojerkmeany 
Mean of the jerk signal derived from the body gyroscope signal in the time domain along the Y direction 
 - Class: number
 - Unit of measurement: seconds

### timebodygyrojerkmeanxz 
Mean of the jerk signal derived from the body gyroscope signal in the time domain along the Z direction 
 - Class: number
 - Unit of measurement: seconds

### timebodygyrojerkstdx 
Standard deviation of the jerk signal derived from the body gyroscope signal in the time domain along the X direction 
 - Class: number
 - Unit of measurement: seconds

### timebodygyrojerkstdy 
Standard deviation of the jerk signal derived from the body gyroscope signal in the time domain along the Y direction 
 - Class: number
 - Unit of measurement: seconds

### timebodygyrojerkstdz 
Standard deviation of the jerk signal derived from the body gyroscope signal in the time domain along the Z direction 
 - Class: number
 - Unit of measurement: seconds

### timebodyaccmagmean 
The mean magnitude, calculated using the Euclidean norm, of the body accelerometer signal in the time domain
 - Class: number
 - Unit of measurement: seconds

### timebodyaccmagstd  
Standard deviation of the magnitude, calculated using the Euclidean norm, of the body accelerometer signal in the time domain
 - Class: number
 - Unit of measurement: seconds

### timegravityaccmagmean
The mean magnitude, calculated using the Euclidean norm, of the gravity part of the accelerometer signal in the time domain
 - Class: number
 - Unit of measurement: seconds

### timegravityaccmagstd  
Standard deviation of the mean magnitude, calculated using the Euclidean norm, of the gravity part of the accelerometer signal in the time domain
 - Class: number
 - Unit of measurement: seconds

### timebodyaccjerkmagmean
The mean magnitude, calculated using the Euclidean norm, of the jerk signal derived from the body accelerometer signal in the time domain
 - Class: number
 - Unit of measurement: seconds

### timebodyaccjerkmagstd  
Standard deviation of the magnitude, calculated using the Euclidean norm, of the jerk signal derived from the body accelerometer signal in the time domain
 - Class: number
 - Unit of measurement: seconds

### timebodygyromagmean 
The mean magnitude, calculated using the Euclidean norm, of the body gyroscope signal in the time domain
 - Class: number
 - Unit of measurement: seconds

### timebodygyromagstd 
Standard deviation of the magnitude, calculated using the Euclidean norm, of the body gyroscope signal in the time domain
 - Class: number
 - Unit of measurement: seconds

### timebodygyrojerkmagmean 
The mean magnitude, calculated using the Euclidean norm, of the jerk signal derived from the body gyroscope signal in the time domain
 - Class: number
 - Unit of measurement: seconds

### timebodygyrojerkmagstd 
Standard deviation of the magnitude, calculated using the Euclidean norm, of the jerk signal derived from the body gyroscope signal in the time domain
 - Class: number
 - Unit of measurement: seconds

### freqbodyaccmeanx 
Mean body accelerometer signal in the frequency domain (after Fast Fourier Transform) along the X direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodyaccmeany 
Mean body accelerometer signal in the frequency domain (after Fast Fourier Transform) along the Y direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodyaccmeanz 
Mean body accelerometer signal in the frequency domain (after Fast Fourier Transform) along the Z direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodyaccstdx 
Standard deviation of body accelerometer signal in the frequency domain (after Fast Fourier Transform) along the X direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodyaccstdy 
Standard deviation of body accelerometer signal in the frequency domain (after Fast Fourier Transform) along the Y direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodyaccstdz 
Standard deviation of body accelerometer signal in the frequency domain (after Fast Fourier Transform) along the Z direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodyaccmeanfreqx 
Weighted average of the frequency components to obtain a mean frequency of body accelerometer signal in the frequency domain (after Fast Fourier Transform) along the X direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodyaccmeanfreqy 
Weighted average of the frequency components to obtain a mean frequency of body accelerometer signal in the frequency domain (after Fast Fourier Transform) along the Y direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodyaccmeanfreqz 
Weighted average of the frequency components to obtain a mean frequency of body accelerometer signal in the frequency domain (after Fast Fourier Transform) along the Z direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodyaccjerkmeanx 
Mean jerk signal derived from body accelerometer signal in the frequency domain (after Fast Fourier Transform) along the X direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodyaccjerkmeany  
Mean jerk signal derived from body accelerometer signal in the frequency domain (after Fast Fourier Transform) along the Y direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodyaccjerkmeanz 
Mean jerk signal derived from body accelerometer signal in the frequency domain (after Fast Fourier Transform) along the Z direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodyaccjerkstdx 
Standard deviation of jerk signal derived from body accelerometer signal in the frequency domain (after Fast Fourier Transform) along the X direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodyaccjerkstdy 
Standard deviation of jerk signal derived from body accelerometer signal in the frequency domain (after Fast Fourier Transform) along the Y direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodyaccjerkstdz 
Standard deviation of jerk signal derived from body accelerometer signal in the frequency domain (after Fast Fourier Transform) along the Z direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodyaccjerkmeanfreqx 
Weighted average of the frequency components to obtain a mean frequency of jerk signal derived from body accelerometer signal in the frequency domain (after Fast Fourier Transform) along the X direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodyaccjerkmeanfreqy 
Weighted average of the frequency components to obtain a mean frequency of jerk signal derived from  body accelerometer signal in the frequency domain (after Fast Fourier Transform) along the Y direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodyaccjerkmeanfreqz 
Weighted average of the frequency components to obtain a mean frequency of jerk signal derived from body accelerometer signal in the frequency domain (after Fast Fourier Transform) along the Z direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodygyromeanx 
Mean body gyroscope signal in the frequency domain (after Fast Fourier Transform) along the X direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodygyromeany  
Mean body gyroscope signal in the frequency domain (after Fast Fourier Transform) along the Y direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodyaccjerkmeanz 
Mean body accelerometer signal in the frequency domain (after Fast Fourier Transform) along the Z direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodygyrostdx 
Standard deviation of body gyroscope signal in the frequency domain (after Fast Fourier Transform) along the X direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodygyrostdy  
Standard deviation of body gyroscope signal in the frequency domain (after Fast Fourier Transform) along the Y direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodygyrostdz 
Standard deviation of body gyroscpe signal in the frequency domain (after Fast Fourier Transform) along the Z direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodygyromeanfreqx 
Weighted average of the frequency components to obtain a mean frequency from body gyroscope signal in the frequency domain (after Fast Fourier Transform) along the X direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodygyromeanfreqy 
Weighted average of the frequency components to obtain a mean frequency from body gyroscope signal in the frequency domain (after Fast Fourier Transform) along the Y direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodygyromeanfreqz 
Weighted average of the frequency components to obtain a mean frequency from body gyroscope signal in the frequency domain (after Fast Fourier Transform) along the Z direction 
 - Class: number
 - Unit of measurement: seconds

### freqbodyaccmagmean 
The mean magnitude, calculated using the Euclidean norm, of the body accelerometer signal in the frequency domain (after Fast Fourier Transform) 
 - Class: number
 - Unit of measurement: seconds

### freqbodyaccmagstd 
Standard deviation of the mean magnitude, calculated using the Euclidean norm, of the body accelerometer signal in the frequency domain (after Fast Fourier Transform) 
 - Class: number
 - Unit of measurement: seconds

### freqbodyaccmagmeanfreq 
Weighted average of the frequency components to obtain a mean frequency of magnitude, calculated using the Euclidean norm, of the body accelerometer signal in the frequency domain (after Fast Fourier Transform) 
 - Class: number
 - Unit of measurement: seconds

### freqbodybodyaccjerkmagmean 
The mean magnitude, calculated using the Euclidean norm, of jerk signal derived from the body accelerometer signal in the frequency domain (after Fast Fourier Transform) 
 - Class: number
 - Unit of measurement: seconds

### freqbodybodyaccjerkmagstd 
The standard deviation of the magnitude, calculated using the Euclidean norm, of the jerk signal derived from the body accelerometer signal in the frequency domain (after Fast Fourier Transform) 
 - Class: number
 - Unit of measurement: seconds

### freqbodybodyaccjerkmagmeanfreq  
The mean magnitude of the weighted average of the frequency components of jerk signal derived from the body accelerometer signal in the frequency domain (after Fast Fourier Transform) 
 - Class: number
 - Unit of measurement: seconds

### freqbodybodygyromagmean 
The mean magnitude of the body gyroscope signal in the frequency domain (after Fast Fourier Transform) 
 - Class: number
 - Unit of measurement: seconds

### freqbodybodygyromagstd 
The standard deviation of the magnitude of the body gyroscope signal in the frequency domain (after Fast Fourier Transform) 
 - Class: number
 - Unit of measurement: seconds

### freqbodybodygyromagmeanfreq  
The mean magnitude of the weighted average of the frequency components of the magnitude of the body gyroscope signal in the frequency domain (after Fast Fourier Transform) 
 - Class: number
 - Unit of measurement: seconds

### freqbodybodygyrojerkmagmean  
The mean magnitude of the body gyroscope signal in the frequency domain (after Fast Fourier Transform) 
 - Class: number
 - Unit of measurement: seconds

### freqbodybodygyrojerkmagstd 
The standard deviation of the magnitude of the body gyroscope signal in the frequency domain (after Fast Fourier Transform) 
 - Class: number
 - Unit of measurement: seconds

### freqbodybodygyrojerkmagmeanfreq
The mean magnitude of the weighted average of the frequency components of the magnitude of the body gyroscope signal in the frequency domain (after Fast Fourier Transform) 
 - Class: number
 - Unit of measurement: seconds

## Description of the Variables in the averaged_data.csv file

### General Description
 - Dimensions: this dataset is 180 observations (rows) of  81 variables (columns) 
 - Summary of the data: there is one observation for each activity performed by each research subject (30 subjects x 6 activities = 180 observations). For each of these observations, the mean value is provided for the remaining 79 measurements made by the Samsung Galaxy S II accelerometer and gyroscope (mean and standard deviation values).  
 - All variables in the data are the same as those described for all_data.csv above.



## Sources
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
