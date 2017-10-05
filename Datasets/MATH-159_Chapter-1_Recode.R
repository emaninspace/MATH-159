require('tidyverse')

x <- c('Yes','YES','yEs','No','NO','nO')
probs <- c(0.42, 0.05, 0.03, 0.45, 0.03, 0.02)
Registered_to_vote <- sample(x, 300, replace = TRUE, prob = probs)

pet_list <- c('Parrot','Bird','Beagle','Dog','Calico','Cat', NA)
probs_pet <- c(0.07,0.13,0.11,0.25,0.02,0.28,0.04)
Pet <- sample(pet_list, 300, replace = TRUE, prob = probs_pet)

GPA <- round(runif(300, 1, 4),2)
ID <- round(runif(300,50000,90000),0)
df <- data.frame(ID,Registered_to_vote, GPA, Pet, row.names=NULL)
write.table(df,file='MATH-159_Chapter-1_Recode.csv',sep=',',row.names=FALSE,col.names=TRUE)
