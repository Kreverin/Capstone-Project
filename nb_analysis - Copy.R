install.packages("e1071", repos = "http://cran.us.r-project.org")
library("e1071")
library("caret")

set.seed(4836)
#nb_model_all <- naiveBayes(class~., data = train_all)
x = train_all[,-16]
y = train_all$class

nb_model_all_test <- train(x,y, method = "naive_bayes")
nb_model_all

varImp(nb_model_all_test)


nb_all_predict <- predict(nb_model_all, test_all)
confusionMatrix(nb_all_predict, test_all$class)




set.seed(1452)
xM = train_male[,-15]
yM = train_male$class

nb_model_male_test <- train(xM,yM, method = "naive_bayes")
varImp(nb_model_male_test)

nb_model_male

nb_male_predict <- predict(nb_model_male, test_male)
confusionMatrix(nb_male_predict, test_male$class)



set.seed(4587)
xF = train_female[,-15]
yF = train_female$class

nb_model_female_test <- train(xF,yF, method = "naive_bayes")
varImp(nb_model_female_test)

nb_model_female

nb_female_predict <- predict(nb_model_female, test_female)
confusionMatrix(nb_female_predict, test_female$class)


