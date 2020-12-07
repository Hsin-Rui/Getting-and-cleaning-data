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

# Variables
The final data set contains 2 identifiers:
* subject.id: the ID of the participants
* activity: the Name of the Activities performed by the participants when measures took place.

The final data set contains the following 66 variables
* time.Body.Accelerometer.Mean.X
* time.Body.Accelerometer.Mean.Y
* time.Body.Accelerometer.Mean.Z
* time.Gravity.Accelerometer.Mean.X
* time.Gravity.Accelerometer.Mean.Y 
* time.Gravity.Accelerometer.Mean.Z
* time.Body.Accelerometer.Jerk.Mean.X
* time.Body.Accelerometer.Jerk.Mean.Y
* time.Body.Accelerometer.Jerk.Mean.Z
* time.Body.Gyroscope.Mean.X
* time.Body.Gyroscope.Mean.Y
* time.Body.Gyroscope.Mean.Z
* time.Body.Gyroscope.Jerk.Mean.X
* time.Body.Gyroscope.Jerk.Mean.Y
* time.Body.Gyroscope.Jerk.Mean.Z
* time.Body.Accelerometer.Magnitude.Mean
* time.Gravity.Accelerometer.Magnitude.Mean
* time.Body.Accelerometer.Jerk.Magnitude.Mean
* time.Body.Gyroscope.Magnitude.Mean
* time.Body.Gyroscope.Jerk.Magnitude.Mean
* frequency.Body.Accelerometer.Mean.X
* frequency.Body.Accelerometer.Mean.Y
* frequency.Body.Accelerometer.Mean.Z
* frequency.Body.Accelerometer.Jerk.Mean.X
* frequency.Body.Accelerometer.Jerk.Mean.Y
* frequency.Body.Accelerometer.Jerk.Mean.Z
* frequency.Body.Gyroscope.Mean.X
* frequency.Body.Gyroscope.Mean.Y
* frequency.Body.Gyroscope.Mean.Z
* frequency.Body.Accelerometer.Magnitude.Mean
* frequency.Body.Accelerometer.Jerk.Magnitude.Mean
* frequency.Body.Gyroscope.Magnitude.Mean
* frequency.Body.Gyroscope.Jerk.Magnitude.Mean
* time.Body.Accelerometer.SD.X
* time.Body.Accelerometer.SD.Y
* time.Body.Accelerometer.SD.Z
* time.Gravity.Accelerometer.SD.X
* time.Gravity.Accelerometer.SD.Y
* time.Gravity.Accelerometer.SD.Z
* time.Body.Accelerometer.Jerk.SD.X
* time.Body.Accelerometer.Jerk.SD.Y
* time.Body.Accelerometer.Jerk.SD.Z
* time.Body.Gyroscope.SD.X
* time.Body.Gyroscope.SD.Y
* time.Body.Gyroscope.SD.Z
* time.Body.Gyroscope.Jerk.SD.X
* time.Body.Gyroscope.Jerk.SD.Y
* time.Body.Gyroscope.Jerk.SD.Z
* time.Body.Accelerometer.Magnitude.SD
* time.Gravity.Accelerometer.Magnitude.SD
* time.Body.Accelerometer.Jerk.Magnitude.SD
* time.Body.Gyroscope.Magnitude.SD
* time.Body.Gyroscope.Jerk.Magnitude.SD
* frequency.Body.Accelerometer.SD.X
* frequency.Body.Accelerometer.SD.Y
* frequency.Body.Accelerometer.SD.Z
* frequency.Body.Accelerometer.Jerk.SD.X
* frequency.Body.Accelerometer.Jerk.SD.Y
* frequency.Body.Accelerometer.Jerk.SD.Z
* frequency.Body.Gyroscope.SD.X
* frequency.Body.Gyroscope.SD.Y
* frequency.Body.Gyroscope.SD.Z
* frequency.Body.Accelerometer.Magnitude.SD
* frequency.Body.Accelerometer.Jerk.Magnitude.SD
* frequency.Body.Gyroscope.Magnitude.SD
* frequency.Body.Gyroscope.Jerk.Magnitude.SD
