ageGrp <- cut(diabetes_all$Age, c(15,25,35,45,55,65,75,90), labels = c("16-25","26-35","36-45","46-55","56-65","66-75","76+"))
diabetes_all <- cbind(diabetes_all, ageGrp)
diabetes_all <- diabetes_all[, -1]
diabetes_male <- subset(diabetes_all, diabetes_all$Gender=="Male")
diabetes_female <- subset(diabetes_all, diabetes_all$Gender=="Female")