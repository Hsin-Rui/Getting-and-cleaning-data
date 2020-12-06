# Raw data
The raw data are obtained from 6 files: `X_train.txt`, `X_test.txt`, `y_train.txt`, `y_test.txt`, `subject_train.txt` and `subject_test.txt`
* `X_train.txt`contains values of all 561 features in the training data set.
* `X_test.txt`contains values of all 561 features in the test data set.
* `y_train.txt`identifies activites related to the values in the training data set.
* `y_test.txt`identifies activites related to the values in the test data set.
* According to `activity_labels.txt`, there are six activities in the data: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING.
* `subject_train.txt` identifies the participants in the training data set.
* `subject_test.txt` identifies the participants in the test data set.


# Procedure
The final data set was created through the following steps:
* 1. The training data set (`X_train.txt`) and the test data set (`X_test.txt`) were merged into one data set.
* 2. Feature names (`features.txt`) were used to name the variables.
* 3. Subject ids were obtained from `subject_train.txt` and `subject_test.txt`.
* 4. Activities were obtained from `y_train.txt` and `y_test.txt`.
* 5. Activities were renamed according to `activity_labels.txt`.
* 6. The mean and standard deviation for each feature were extracted, which resulted in 66 variables.
* 7. Variables were renamed to be understandable, using information obtained from `features_info.txt`.
* 8. The final data set (`final-data.txt`) was created by taking the mean of each feature for each participant and each activity.

## Identififiers
The first two columns - Subject and Activity - are Identifiers.
* Subject: the ID of the Subject
* Activity: the Name of the Activity performed by the subject when measurements were taken

## Measurements
As mentioned above,the variables remaining are just the calculatd means and standard deviations of these sets of data:
(Even if I do not give a detailed description of what each data value means, you can see what it means by comparing it with the original data column.)

* tBodyAccMeanX
* tBodyAccMeanY
* tBodyAccMeanZ
* tBodyAccStdX
* tBodyAccStdY
* tBodyAccStdZ
* tGravityAccMeanX
* tGravityAccMeanY
* tGravityAccMeanZ
* tGravityAccStdX
* tGravityAccStdY
* tGravityAccStdZ
* tBodyAccJerkMeanX
* tBodyAccJerkMeanY
* tBodyAccJerkMeanZ
* tBodyAccJerkStdX
* tBodyAccJerkStdY
* tBodyAccJerkStdZ
* tBodyGyroMeanX
* tBodyGyroMeanY
* tBodyGyroMeanZ
* tBodyGyroStdX
* tBodyGyroStdY
* tBodyGyroStdZ
* tBodyGyroJerkMeanX
* tBodyGyroJerkMeanY
* tBodyGyroJerkMeanZ
* tBodyGyroJerkStdX
* tBodyGyroJerkStdY
* tBodyGyroJerkStdZ
* tBodyAccMagMean
* tBodyAccMagStd
* tGravityAccMagMean
* tGravityAccMagStd
* tBodyAccJerkMagMean
* tBodyAccJerkMagStd
* tBodyGyroMagMean
* tBodyGyroMagStd
* tBodyGyroJerkMagMean
* tBodyGyroJerkMagStd
* fBodyAccMeanX
* fBodyAccMeanY
* fBodyAccMeanZ
* fBodyAccStdX
* fBodyAccStdY
* fBodyAccStdZ
* fBodyAccMeanFreqX
* fBodyAccMeanFreqY
* fBodyAccMeanFreqZ
* fBodyAccJerkMeanX
* fBodyAccJerkMeanY
* fBodyAccJerkMeanZ
* fBodyAccJerkStdX
* fBodyAccJerkStdY
* fBodyAccJerkStdZ
* fBodyAccJerkMeanFreqX
* fBodyAccJerkMeanFreqY
* fBodyAccJerkMeanFreqZ
* fBodyGyroMeanX
* fBodyGyroMeanY
* fBodyGyroMeanZ
* fBodyGyroStdX
* fBodyGyroStdY
* fBodyGyroStdZ
* fBodyGyroMeanFreqX
* fBodyGyroMeanFreqY
* fBodyGyroMeanFreqZ
* fBodyAccMagMean
* fBodyAccMagStd
* fBodyAccMagMeanFreq
* fBodyBodyAccJerkMagMean
* fBodyBodyAccJerkMagStd
* fBodyBodyAccJerkMagMeanFreq
* fBodyBodyGyroMagMean
* fBodyBodyGyroMagStd
* fBodyBodyGyroMagMeanFreq
* fBodyBodyGyroJerkMagMean
* fBodyBodyGyroJerkMagStd
* fBodyBodyGyroJerkMagMeanFreq
