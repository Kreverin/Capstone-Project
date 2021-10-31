#sample data to ensure random distribution of class variable
shuffle_index <- sample(1:nrow(diabetes_all))
dia_all_dt <- diabetes_all[shuffle_index,]

#dataset is already clean no missing values, categorical so not normalilzed or standardized
