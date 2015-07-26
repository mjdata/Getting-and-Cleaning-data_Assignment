Code Book
ID Fields

Variables:
subj - The partcipant ID
act - The label of the activity performed when the corresponding measurements were taken
dat - datasets of extracted features (training or test)

test_dat - Test data extracted
train_dat - Train data extracted
all_dat - combined data (test and train)
all_dat_melted - melted data using and subject and activity field
all_dat_dcast - dcasted data which is the cleaned one

Functions:
read_data() - reads either test or train data based on the input

Extracted Feature Fields:
The following features were extracted as a part of mean() and std(). meanFreq and angle(mean) were omitted as they don't represent required mean.

tBodyAcc-mean()-X (column 1)
tBodyAcc-mean()-Y (column 2)
tBodyAcc-mean()-Z (column 3)
tBodyAcc-std()-X (column 4)
tBodyAcc-std()-Y (column 5)
tBodyAcc-std()-Z (column 6)
tGravityAcc-mean()-X (column 41)
tGravityAcc-mean()-Y (column 42)
tGravityAcc-mean()-Z (column 43)
tGravityAcc-std()-X (column 44)
tGravityAcc-std()-Y (column 45)
tGravityAcc-std()-Z (column 46)
tBodyAccJerk-mean()-X (column 81)
tBodyAccJerk-mean()-Y (column 82)
tBodyAccJerk-mean()-Z (column 83)
tBodyAccJerk-std()-X (column 84)
tBodyAccJerk-std()-Y (column 85)
tBodyAccJerk-std()-Z (column 86)
tBodyGyro-mean()-X (column 121)
tBodyGyro-mean()-Y (column 122)
tBodyGyro-mean()-Z (column 123)
tBodyGyro-std()-X (column 124)
tBodyGyro-std()-Y (column 125)
tBodyGyro-std()-Z (column 126)
tBodyGyroJerk-mean()-X (column 161)
tBodyGyroJerk-mean()-Y (column 162)
tBodyGyroJerk-mean()-Z (column 163)
tBodyGyroJerk-std()-X (column 164)
tBodyGyroJerk-std()-Y (column 165)
tBodyGyroJerk-std()-Z (column 166)
tBodyAccMag-mean() (column 201)
tBodyAccMag-std() (column 202)
tGravityAccMag-mean() (column 214)
tGravityAccMag-std() (column 215)
tBodyAccJerkMag-mean() (column 227)
tBodyAccJerkMag-std() (column 228)
tBodyGyroMag-mean() (column 240)
tBodyGyroMag-std() (column 241)
tBodyGyroJerkMag-mean() (column 253)
tBodyGyroJerkMag-std() (column 254)
fBodyAcc-mean()-X (column 266)
fBodyAcc-mean()-Y (column 267)
fBodyAcc-mean()-Z (column 268)
fBodyAcc-std()-X (column 269)
fBodyAcc-std()-Y (column 270)
fBodyAcc-std()-Z (column 271)
fBodyAccJerk-mean()-X (column 345)
fBodyAccJerk-mean()-Y (column 346)
fBodyAccJerk-mean()-Z (column 347)
fBodyAccJerk-std()-X (column 348)
fBodyAccJerk-std()-Y (column 349)
fBodyAccJerk-std()-Z (column 350)
fBodyGyro-mean()-X (column 424)
fBodyGyro-mean()-Y (column 425)
fBodyGyro-mean()-Z (column 426)
fBodyGyro-std()-X (column 427)
fBodyGyro-std()-Y (column 428)
fBodyGyro-std()-Z (column 429)
fBodyAccMag-mean() (column 503)
fBodyAccMag-std() (column 504)
fBodyBodyAccJerkMag-mean() (column 516)
fBodyBodyAccJerkMag-std() (column 517)
fBodyBodyGyroMag-mean() (column 529)
fBodyBodyGyroMag-std() (column 530)
fBodyBodyGyroJerkMag-mean() (column 542)
fBodyBodyGyroJerkMag-std() (column 543)

Activity Labels extracted

1 - WALKING
2 - WALKING_UPSTAIRS
3 - WALKING_DOWNSTAIRS
4 - SITTING
5 - STANDING
6 - LAYING

Activity labels are factored into the variables from the original data based on the numbers it represented