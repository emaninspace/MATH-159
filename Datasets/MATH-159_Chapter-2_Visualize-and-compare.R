require('tidyverse')

n <- 300

x <- c('Yes','No')
probs <- c(0.40, 0.60)
Registered_to_vote <- sample(x, n, replace = TRUE, prob = probs)

pet_list <- c('Bird','Dog','Cat', NA)
probs_pet <- c(0.4, 0.3, 0.2, 0.1)
Pet <- sample(pet_list, n, replace = TRUE, prob = probs_pet)

Class <- sample(c('Class 1', 'Class 2', 'Class 3'), n, replace=TRUE, prob=c(0.7, 0.2, 0.1))

ID <- round(runif(n,0,10000),0)

GPA <- abs(round(rnorm(n, 1.7, 0.75),2))

df <- data.frame(Class,Registered_to_vote,Pet,ID,GPA, row.names=NULL)

write.table(df,file='MATH-159_Chapter-2_Visualize-and-compare.csv',sep=',',row.names=FALSE,col.names=TRUE)
