diabetes_all <- diabetes_data_upload
diabetes_male <- subset(diabetes_data_upload, diabetes_data_upload$Gender=="Male")
diabetes_female <- subset(diabetes_data_upload, diabetes_data_upload$Gender=="Female")

table(diabetes_male$class)

#Negative Positive 
#181      147 
table(diabetes_female$class)

#Negative Positive 
#19      173 