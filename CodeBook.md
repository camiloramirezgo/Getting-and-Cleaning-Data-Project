# Code Book

This code book describes the variables of the resulting data fields in `tidy_dataset.txt`.

## Identifiers

* `subject` - The ID of the test subject
* `activity` - The type of activity performed when the corresponding measurements were taken

## Variables
The variables selected for the tidy dataset are the mean and standard deviation of the accelerometer and gyroscope 3-axial raw signals of the [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) dataset.

* `tbodyacc-mean()-x`, `tbodyacc-mean()-y`, `tbodyacc-mean()-z`
* `tbodyacc-std()-x`, `tbodyacc-std()-y`, `tbodyacc-std()-z`
* `tgravityacc-mean()-x`, `tgravityacc-mean()-y`, `tgravityacc-mean()-z`
* `tgravityacc-std()-x`, `tgravityacc-std()-y`, `tgravityacc-std()-z`
* `tbodyaccjerk-mean()-x`, `tbodyaccjerk-mean()-y`, `tbodyaccjerk-mean()-z`
* `tbodyaccjerk-std()-x`, `tbodyaccjerk-std()-y`, `tbodyaccjerk-std()-z`
* `tbodygyro-mean()-x`, `tbodygyro-mean()-y`, `tbodygyro-mean()-z`
* `tbodygyro-std()-x`, `tbodygyro-std()-y`, `tbodygyro-std()-z`
* `tbodygyrojerk-mean()-x`, `tbodygyrojerk-mean()-y`, `tbodygyrojerk-mean()-z`
* `tbodygyrojerk-std()-x`, `tbodygyrojerk-std()-y`, `tbodygyrojerk-std()-z`
* `tbodyaccmag-mean()`, `tbodyaccmag-std()`
* `tgravityaccmag-mean()`, `tgravityaccmag-std()`
* `tbodyaccjerkmag-mean()`, `tbodyaccjerkmag-std()`
* `tbodygyromag-mean()`, `tbodygyromag-std()`
* `tbodygyrojerkmag-mean()`, `tbodygyrojerkmag-std()`
* `fbodyacc-mean()-x`, `fbodyacc-mean()-y`, `fbodyacc-mean()-z`
* `fbodyacc-std()-x`, `fbodyacc-std()-y`, `fbodyacc-std()-z`
* `fbodyaccjerk-mean()-x`, `fbodyaccjerk-mean()-y`, `fbodyaccjerk-mean()-z`
* `fbodyaccjerk-std()-x`, `fbodyaccjerk-std()-y`, `fbodyaccjerk-std()-z`
* `fbodygyro-mean()-x`, `fbodygyro-mean()-y`, `fbodygyro-mean()-z`
* `fbodygyro-std()-x`, `fbodygyro-std()-y`, `fbodygyro-std()-z`
* `fbodyaccmag-mean()`, `fbodyaccmag-std()`
* `fbodybodyaccjerkmag-mean()`, `fbodybodyaccjerkmag-std()`
* `fbodybodygyromag-mean()`, `fbodybodygyromag-std()`
* `fbodybodygyrojerkmag-mean()`, `fbodybodygyrojerkmag-std()`

## Activity Labels

* `WALKING`: subject was walking during the test
* `WALKING_UPSTAIRS`: subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS`: subject was walking down a staircase during the test
* `SITTING`: subject was sitting during the test
* `STANDING`: subject was standing during the test
* `LAYING`: subject was laying down during the test
