getwd()
titanic <- read.csv("titanic_original.csv", header = TRUE, stringsAsFactors = FALSE, na.strings = '', nrows = 1309)
names(titanic$embarked)
sum(is.na(titanic$embarked))


titanic$embarked[is.na(titanic$embarked)] <- 'S'
titanic$embarked <- factor(titanic$embarked)


names(titanic)




sum(is.na(titanic$age))
mean_age <- mean(titanic$age, na.rm = TRUE)
titanic$age[is.na(titanic$age)] <- mean_age


titanic$has_cabin_number <- ifelse(is.na(titanic$cabin), 0,1)




write.csv(x = titanic, file = 'titanic_clean.csv')
