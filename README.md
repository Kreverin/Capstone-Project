# Capstone-Project
Final project for CIND 820 
The project is grouped by all the data, and then split by Gender column, male data and female data. The preprocessing was broken into univariate, and bivariate analysis. Multivariate analysis was difficult as all the variables are categorical, except for age.  
ALL GENDERS 
File: InitialAnalysisKellyRevering.rmd
Univariate analysis
The dataset with all the data was preprocessed to look at missing values and variable types. No missing values.  Except for age, all variables are characters and changed to two level factors.
All variables were directly measured.  All variables except age are categorical, age is numerical.  The target variable or response variable is class with the remaining 16 variables the predictor variables or input variables.
For age, a summary of values and a histogram was completed to ascertain the spread of answers. Because it was a fairly even spread, age was factored into groups based on 10 year age levels.  There are also a few outliers with I believe are real ages just outside the main values. I do not believe they are an error.
All entries are consistent in capital letters and there are no blank space.  
Looked at distribution of response variable in dataset, 60/40 approximately
Bivariate analysis
Correlation was determined between all variables including the response variable. The Goodman Kruskal package was used.  
Because categorical variables, difficult to look at multivariate analysis.  
Exploratory Data Analysis
Categorical variables cannot be normalized or scaled.
Clustering analysis 
Completed at this stage using K means.  Variables were one hot encoded using packages mltools and data.table. A k value of 2 was used to correlate to the two levels of class variable, negative or positive.  A k value analysis was completed using factoextra and cluster packages to see if there was an optimum number of k values.
Categorical variables cannot be dimensionally reduced.
Modelling
Train and test data sets were split 70/30 and a shuffle index was created to ensure approximately the same class variable distribution in both the train and test dataset as the original.
Decision tree 
One hot encoding was preformed on categorical variables. Rpart.plot package was used.
Naives bayes
Package e1071 was used.  
Linear regression
The train and test datasets were one hot encoded and the new values for ageGrp were used.  The remaining variables, because they only had two levels, were assigned a 0 for No and 1 for Yes.   
Root mean square and percentages of cases with less than 25% error were determined.  
MALE ONLY DATA
File: InitialAnyalysisKellyRevering_male.rmd
Univariate Analysis
The full dataset was split by gender:
192 Female
328 Male
Of those:
181 negative
147 positive
All the above analysis on the whole dataset were completed again on the male dataset keeping the train and test dataset class distribution similar to the original male dataset.  
FEMALE ONLY DATA
File: InitialAnalysisKellyRevering_female.rmd
The full dataset was split by gender.  
192 Female
328 Male
Of those:
19 Negative 173 positive
There is an extreme imbalance of the target variable.  When the train/test datasets were created, a shuffle index was assigned to ensure that both train and test had the same distribution of class variable.  In this case, both train and test dataset have an approximate 10/90 split of class variables which approximately correlates to the original female dataset. The above analysis was completed on the female dataset but with prejudice.  
