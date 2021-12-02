shuffle_index_all <- sample(1:nrow(dia_all))
dia_all_dt <- dia_all[shuffle_index_all,]

#create train/test sets
set.seed(3692)
index <- sample(1:nrow(dia_all_dt),0.7*nrow(dia_all_dt))
train_all <- dia_all_dt[index,]
test_all <- dia_all_dt[-index,]

#check to see distribution of class variable in training set
prop.table(table(train_all$class))

install.packages("rpart.plot",repos = "http://cran.us.r-project.org")
library("rpart.plot")

fit_all <- rpart(class~., data = train_all, method = "class")
rpart.plot(fit_all, extra = 106, main = "Decision Tree for Whole Dataset")
dt_all_pred <- predict(fit_all, newdata = test_all, method = "class")

shuffle_index_male <- sample(1:nrow(dia_male))
dia_male_dt <- dia_male[shuffle_index_male,]


#create train/test sets
set.seed(3692)
index_male <- sample(1:nrow(dia_male_dt),0.7*nrow(dia_male_dt))
train_male <- dia_male_dt[index_male,]
test_male <- dia_male_dt[-index_male,]

fit_male <- rpart(class~., data = train_male, method = "class")
rpart.plot(fit_male, extra = 106, main = "Decision Tree for Male Dataset")
dt_male_pred <- predict(fit_male, newdata = test_male, method = "class")

shuffle_index_female <- sample(1:nrow(dia_female))
dia_female_dt <- dia_female[shuffle_index_female,]

#create train/test sets
set.seed(3692)
index_female <- sample(1:nrow(dia_female_dt),0.7*nrow(dia_female_dt))
train_female <- dia_female_dt[index_female,]
test_female <- dia_female_dt[-index_female,]

fit_female <- rpart(class~., data = train_female, method = "class")
rpart.plot(fit_female, extra = 106, main = "Decision Tree for Female Dataset")
dt_female_pred <- predict(fit_female, newdata = test_female, method = "class")

