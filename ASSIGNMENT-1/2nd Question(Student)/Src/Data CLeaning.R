# Importing the required libraries
library(dplyr)
library(ggplot2)

# Importing the student performance data set into R and creating a data frame
std_df <- read.csv("/Users/vd/Desktop/Spring 2023/PDS/ASSIGNMENT-1/2nd Question(Student)/Raw Data/StudentsPerformance.csv")

# Checking the top five rows of the data frame
head(std_df)

# Checking the last five rows of the data frame
tail(std_df)

# Checking the number of rows in the data frame
nrow(std_df)

# Checking the number of columns in the data frame
ncol(std_df)

# Checking the data frame whether it has null values
is.na(std_df)

# Printing columns with their total null values
colSums(is.na(std_df))

# Checking the total number of null values in the data frame
sum(is.na(std_df))

# There are no values in the student performance data set

# Checking the variable names of the student performance data set
names(std_df)

# Changing the names of the data frame into our coding convenience
std_df <- rename(std_df, Gender = gender, Race_or_Ethnicity = race.ethnicity, Parental_Level_of_Education = parental.level.of.education,
                Lunch = lunch, Test_Preparation_Course = test.preparation.course, Math_Score = math.score, Reading_Score = reading.score,
                Writing_Score = writing.score)

# Checking the top five rows of the data frame after changing the variable names
head(std_df)

# Saving the cleaned data frame to disk
write.csv(std_df, "/Users/vd/Desktop/Spring 2023/PDS/ASSIGNMENT-1/2nd Question(Student)/Cleaned Data/Cleaned Data StudentPerformance_Data.csv")



















