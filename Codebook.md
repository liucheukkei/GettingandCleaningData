This code book provides a brief description of variables present in the output dataset of the R program script "run_analysis.R".

One should be able to understand what each variable represents with the following points.
- All numerical values represent the mean/average values of measurements in the PROCESSED data.
- The are two types of signals: Time domain signals or Frequency domain signals. Time domain signals were captured at a constant rate of 50Hz. Frequency domain signals were generated by applying a Fast Fourier Transform (FFT) to the time domain signals.All variable names clearly deonte which signal it belongs to.
- There are two sources of signals: Accelerometer or Gyroscope.
- -X, -Y and -Z represent the 3-axial raw signals collected.
- mean() and std() means that mean value and standard deviation figures were estimated from the RAW data.
- The acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity
- The subject_code represents the 30 subjects being tested in the experiment.
- The activity_description represents the activities being carried out by the subject e.g. Walking, walking upstairs, sitting etc.


The following are variables present in the output dataset "step5.txt".

"subject_code" 
"activity_description" 
"Time Domain Signals Body Accelerometer -mean()-X" 
"Time Domain Signals Body Accelerometer -mean()-Y" 
"Time Domain Signals Body Accelerometer -mean()-Z" 
"Time Domain Signals Body Accelerometer -std()-X" 
"Time Domain Signals Body Accelerometer -std()-Y" 
"Time Domain Signals Body Accelerometer -std()-Z" 
"Time Domain Signals Gravity Accelerometer -mean()-X" 
"Time Domain Signals Gravity Accelerometer -mean()-Y" 
"Time Domain Signals Gravity Accelerometer -mean()-Z" 
"Time Domain Signals Gravity Accelerometer -std()-X" 
"Time Domain Signals Gravity Accelerometer -std()-Y" 
"Time Domain Signals Gravity Accelerometer -std()-Z" 
"Time Domain Signals Body Accelerometer Jerk-mean()-X" 
"Time Domain Signals Body Accelerometer Jerk-mean()-Y" 
"Time Domain Signals Body Accelerometer Jerk-mean()-Z" 
"Time Domain Signals Body Accelerometer Jerk-std()-X" 
"Time Domain Signals Body Accelerometer Jerk-std()-Y" 
"Time Domain Signals Body Accelerometer Jerk-std()-Z" 
"Time Domain Signals Body Gyroscope -mean()-X" 
"Time Domain Signals Body Gyroscope -mean()-Y" 
"Time Domain Signals Body Gyroscope -mean()-Z" 
"Time Domain Signals Body Gyroscope -std()-X" 
"Time Domain Signals Body Gyroscope -std()-Y" 
"Time Domain Signals Body Gyroscope -std()-Z" 
"Time Domain Signals Body Gyroscope Jerk-mean()-X" 
"Time Domain Signals Body Gyroscope Jerk-mean()-Y" 
"Time Domain Signals Body Gyroscope Jerk-mean()-Z" 
"Time Domain Signals Body Gyroscope Jerk-std()-X" 
"Time Domain Signals Body Gyroscope Jerk-std()-Y" 
"Time Domain Signals Body Gyroscope Jerk-std()-Z" 
"Time Domain Signals Body Accelerometer Mag-mean()" 
"Time Domain Signals Body Accelerometer Mag-std()" 
"Time Domain Signals Gravity Accelerometer Mag-mean()" 
"Time Domain Signals Gravity Accelerometer Mag-std()" 
"Time Domain Signals Body Accelerometer JerkMag-mean()" 
"Time Domain Signals Body Accelerometer JerkMag-std()" 
"Time Domain Signals Body Gyroscope Mag-mean()" 
"Time Domain Signals Body Gyroscope Mag-std()" 
"Time Domain Signals Body Gyroscope JerkMag-mean()" 
"Time Domain Signals Body Gyroscope JerkMag-std()" 
"Frequency Domain Signals Body Accelerometer -mean()-X" 
"Frequency Domain Signals Body Accelerometer -mean()-Y" 
"Frequency Domain Signals Body Accelerometer -mean()-Z" 
"Frequency Domain Signals Body Accelerometer -std()-X" 
"Frequency Domain Signals Body Accelerometer -std()-Y" 
"Frequency Domain Signals Body Accelerometer -std()-Z" 
"Frequency Domain Signals Body Accelerometer -meanFreq()-X" 
"Frequency Domain Signals Body Accelerometer -meanFreq()-Y" 
"Frequency Domain Signals Body Accelerometer -meanFreq()-Z" 
"Frequency Domain Signals Body Accelerometer Jerk-mean()-X" 
"Frequency Domain Signals Body Accelerometer Jerk-mean()-Y" 
"Frequency Domain Signals Body Accelerometer Jerk-mean()-Z" 
"Frequency Domain Signals Body Accelerometer Jerk-std()-X" 
"Frequency Domain Signals Body Accelerometer Jerk-std()-Y" 
"Frequency Domain Signals Body Accelerometer Jerk-std()-Z" 
"Frequency Domain Signals Body Accelerometer Jerk-meanFreq()-X" 
"Frequency Domain Signals Body Accelerometer Jerk-meanFreq()-Y" 
"Frequency Domain Signals Body Accelerometer Jerk-meanFreq()-Z" 
"Frequency Domain Signals Body Gyroscope -mean()-X" 
"Frequency Domain Signals Body Gyroscope -mean()-Y" 
"Frequency Domain Signals Body Gyroscope -mean()-Z" 
"Frequency Domain Signals Body Gyroscope -std()-X" 
"Frequency Domain Signals Body Gyroscope -std()-Y" 
"Frequency Domain Signals Body Gyroscope -std()-Z" 
"Frequency Domain Signals Body Gyroscope -meanFreq()-X" 
"Frequency Domain Signals Body Gyroscope -meanFreq()-Y" 
"Frequency Domain Signals Body Gyroscope -meanFreq()-Z" 
"Frequency Domain Signals Body Accelerometer Mag-mean()" 
"Frequency Domain Signals Body Accelerometer Mag-std()" 
"Frequency Domain Signals Body Accelerometer Mag-meanFreq()" 
"Frequency Domain Signals Body BodyAccelerometer JerkMag-mean()" 
"Frequency Domain Signals Body BodyAccelerometer JerkMag-std()" 
"Frequency Domain Signals Body BodyAccelerometer JerkMag-meanFreq()" 
"Frequency Domain Signals Body BodyGyroscope Mag-mean()" 
"Frequency Domain Signals Body BodyGyroscope Mag-std()" 
"Frequency Domain Signals Body BodyGyroscope Mag-meanFreq()" 
"Frequency Domain Signals Body BodyGyroscope JerkMag-mean()" 
"Frequency Domain Signals Body BodyGyroscope JerkMag-std()" 
"Frequency Domain Signals Body BodyGyroscope JerkMag-meanFreq()"