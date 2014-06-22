CodeBook
========================================================

### This first item illustrates the format of the codebook.

#### -Name- 
> -Description of variable-
* -List of variable types-

### Identifier variables:

#### SubjectID     
> Identification number of a volunteer
* 01..30 - Unique identifier assigned to each volunteer

#### ActivityID/Activity 
> Activity type
* 1 - WALKING
* 2 - WALKING_UPSTAIRS
* 3 - WALKING_DOWNSTAIRS
* 4 - SITTING
* 5 - STANDING
* 6 - LAYING

### Feature variables (normalized and bounded within [-1,1]):

#### (t/T)BodyAcc-XYZ 
> Time-domain 3-axial body acceleration signals in the X, Y, and Z directions

#### (t/T)GravityAcc-XYZ
> Time-domain 3-axial gravity acceleration signals in the X, Y, and Z directions

#### (t/T)BodyAccJerk-XYZ
> Time-domain 3 axial jerk signals derived from body acceleration in the X, Y, and Z directions

#### (t/T)BodyGyro-XYZ
> Time-domain 3-axial angular velocity signals in the X, Y, and Z directions

#### (t/T)BodyGyroJerk-XYZ
> Time-domain 3-axial jerk signals derived from angular velocity in the X, Y, and Z directions

#### (t/T)BodyAccMag
> Time-domain magnitude of 3-axial body acceleration signals calculated using Euclidean norm

#### (t/T)GravityAccMag
> Time-domain magnitude of 3-axial gravity acceleration signals calculated using Euclidean norm

#### (t/T)BodyAccJerkMag
> Time-domain magnitude of 3-axial jerk signals derived from body acceleration calculated using Euclidean norm

#### (t/T)BodyGyroMag
> Time-domain magnitude of 3-axial angular velocity signals calculated using Euclidean norm

#### (t/T)BodyGyroJerkMag
> Time-domain magnitude of 3-axial jerk signals derived from angular velocity  calculated using Euclidean norm

#### (f/F)BodyAcc-XYZ
> Frequency-domain 3-axial body acceleration signals in the X, Y, and Z directions

#### (f/F)BodyAccJerk-XYZ
> Frequency-domain 3 axial jerk signals derived from body acceleration in the X, Y, and Z directions

#### (f/F)BodyGyro-XYZ
> Frequency-domain 3-axial angular velocity signals in the X, Y, and Z directions

#### (f/F)BodyAccMag
> Frequency-domain magnitude of 3-axial body acceleration signals calculated using Euclidean norm

#### (f/F)BodyAccJerkMag
> Frequency-domain magnitude of 3-axial jerk signals derived from body acceleration calculated using Euclidean norm

#### (f/F)BodyGyroMag
> Frequency-domain magnitude of 3-axial angular velocity signals calculated using Euclidean norm

#### (f/F)BodyGyroJerkMag
> Frequency-domain magnitude of 3-axial jerk signals derived from angular velocity  calculated using Euclidean norm

### Summary variables:

#### mean() (original dataset) or Mean (resulting dataset)
> Mean value

#### std() (original dataset) or Std (resulting dataset)
> Standard deviation

#### Ave(feature name) (i.e. AveTBodyAccMeanX)
> Average value of the feature

#### mad()
> Median absolute deviation 

#### max()
> Largest value in array

#### min()
> Smallest value in array

#### sma()
> Signal magnitude area

#### energy()
> Energy measure; sum of the squares divided by the number of values

#### iqr()
> Interquartile range 

#### entropy()
> Signal entropy

#### arCoeff()
> Autorregresion coefficients with Burg order equal to 4

#### correlation()
> Correlation coefficient between two signals

#### maxInds()
> Index of the frequency component with largest magnitude

#### meanFreq()
> Weighted average of the frequency components to obtain a mean frequency

#### skewness()
> Skewness of the frequency domain signal 

#### kurtosis()
> Kurtosis of the frequency domain signal 

#### bandsEnergy()
> Energy of a frequency interval within the 64 bins of the FFT of each window

#### angle(): 
> Angle between 2 vectors

### Additional variables (used by angle()):

#### gravityMean
> Average of gravity acceleration signals

#### tBodyAccMean
> Average of time-domain body acceleration signals

#### tBodyAccJerkMean
> Average of time-domain jerk signals derived from body acceleration

#### tBodyGyroMean
> Average of time-domain angular velocity signals

#### tBodyGyroJerkMean
> Average of time-domain jerk signals derived from angular velocity

