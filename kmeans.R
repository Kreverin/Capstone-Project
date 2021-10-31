#all data values

#remove class column from data set
diabetes_input <- diabetes_all[,c(1:15,17)]
#change data.frame to data.table
dia_one_hot <- data.table(diabetes_input)
one_hot_all <- one_hot(dia_one_hot, cols = "auto")
set.seed(1234)
kmeans_all <- kmeans(one_hot_all,2)
kmeans_all

#table to check result
kmeans_all_table <- table(diabetes_all$class,kmeans_all$cluster)
kmeans_all_table

#male set of data
#remove class column from data set
diabetes_input_male <- diabetes_male[,c(1:15,17)]
#change data.frame to data.table
dia_one_hot_male <- data.table(diabetes_input_male)
one_hot_male <- one_hot(dia_one_hot_male, cols = "auto")
set.seed(1234)
kmeans_male <- kmeans(one_hot_male,2)
kmeans_male
#table to check result
kmeans_male_table <- table(diabetes_male$class,kmeans_male$cluster)
kmeans_male_table
summary(kmeans_male_table)


#look at clustering results
str(kmeans_all)
#visualize kmeans with k=2
k_all <- fviz_cluster(kmeans_all, data = one_hot_all)
#look at optimum k value
sil_all<- fviz_nbclust(one_hot_all,kmeans, method = "silhouette")
wss_all <- fviz_nbclust(one_hot_all,kmeans, method = "wss")
gap_all <- fviz_nbclust(one_hot_all,kmeans,nboot = 500, nstart=25, method = "gap_stat")

#male data
k_male < fviz_cluster(kmeans_male, data = one_hot_male)
sil_male<- fviz_nbclust(one_hot_male,kmeans, method = "silhouette")
wss_male <- fviz_nbclust(one_hot_male,kmeans, method = "wss")
gap_male <- fviz_nbclust(one_hot_male,kmeans,nboot = 500, nstart=25, method = "gap_stat")







