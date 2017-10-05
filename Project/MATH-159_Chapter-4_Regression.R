require("tidyverse")
library("googlesheets")

(mysheets <- gs_ls())

responses <- gs_title("Untitled form (Responses)")

df <- responses %>%
  gs_read(ws = "Form Responses 1")

n <- dim(df)[1]
  
names <- c("Dick Van Dyke",
           "Mel Brooks",
           "Jay-Z",
           "Beyonce",
           "Rhianna",
           "Tim Cook",
           "Mark Zuckerberg",
           "Fetty Wap",
           "Chance The Rapper",
           "Taylor Swift",
           "Dave Navarro",
           "Bill Clinton",
           "Hillary Clinton",
           "Al Gore",
           "Bush II",
           "Barack Obama")

actualages <- c(91,
                90,
                47,
                36,
                29,
                56,
                33,
                26,
                24,
                27,
                50,
                71,
                69,
                69,
                71,
                56)
agevector <- rep(actualages,each=n)

df <- df[-1] # drop Timestamp
df <- gather(df) # key is name and value is guessedage
df$ActualAge <- agevector
colnames(df) <- c("Name","GuessedAge","ActualAge")

write_csv(df,"MATH-159_Project_Chapter-4.csv",col_names = TRUE)

# Analysis
attach(df)
plot(ActualAge,GuessedAge)

model <- lm(GuessedAge ~ ActualAge)
summary(model)

