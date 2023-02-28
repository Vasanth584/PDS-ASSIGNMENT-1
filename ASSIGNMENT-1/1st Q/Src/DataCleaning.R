# Importing the frailty csv file into R studio and creating a data frame
fraity_df <- read.csv("//Users/vd/Desktop/Spring 2023/PDS/ASSIGNMENT-1/1st Q/Raw Data/Frailty_data.csv")

# Checking the top five rows of the data frame
head(fraity_df)

# Checking the last five rows of the data frame
tail(fraity_df)

# Checking the number of rows in the data frame
nrow(fraity_df)

# Checking number of columns in the data frame
ncol(fraity_df)

# Checking whether the data frame has 'NA' values or not
is.na(fraity_df)

# Total number of 'NA'(Null) values in the data frame
sum(is.na(fraity_df))

# There are no 'NA'(Null) values in the data frame, there is no need of removing the values

# If there are any null values then they should be removed

# frailty_df <- na.omit(frailty_df[frailty_df$column that have 'na' values != N, ])

# Checking the variable names
names(fraity_df)

# Renaming the variables for the convenience of coding
# Calling the tidyverse library
library(tidyverse)

# Renaming the variables
fraity_df <- rename(fraity_df, Height_in_inches = Height..Inches., Weight_in_pounds = Weight..Pounds., Grip_strength = Grip.Strength)

# Now, checking the top five rows of the data frame
head(fraity_df)

# Saving the cleaned data frame to disk
write.csv(fraity_df, "/Users/vd/Desktop/Spring 2023/PDS/ASSIGNMENT-1/1st Q/Cleaned Data/Cleaned Frailty.csv")












