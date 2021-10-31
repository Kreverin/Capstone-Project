table(diabetes_data_upload$class)

#Negative Positive 
#200      320 
table(diabetes_data_upload$Gender)

#Female   Male 
#192    328 
summary(diabetes_data_upload$Age)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#16.00   39.00   47.50   48.03   57.00   90.00 
boxplot(diabetes_data_upload$Age)