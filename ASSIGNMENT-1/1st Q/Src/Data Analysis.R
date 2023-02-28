# Installing the package
install.packages("caTools")
install.packages("ROCR") 

# Loading package
library(caTools)
library(ROCR)

# Importing the cleaned frailty csv file into R studio and creating a data frame
fraity_df <- read.csv("/Users/vd/Desktop/Spring 2023/PDS/ASSIGNMENT-1/1st Q/Cleaned Data/Cleaned Frailty.csv")

# Checking the top five rows of the data frame
head(fraity_df)

# Checking the last five rows of the data frame
tail(fraity_df)

# Checking the data types of each variable in the data frame
str(fraity_df)

# Changing the 'Y' to 1 and 'N' to 0 in frailty variable
fraity_df$Frailty <- ifelse(fraity_df$Frailty == "Y", 1, 0)

# Checking the top five rows of the data set
head(fraity_df)

# Checking the relationship between weight and the frailty condition
Scatterplot <- plot(fraity_df$Age , fraity_df$Frailty, main = "Relation between Age and frailty condition", xlab = "Frailty", ylab = "Age")

# Summary of the data frame
summary(fraity_df)

# Splitting the data set into 80% train data and 20% test data
split <- sample.split(fraity_df, SplitRatio = 0.8)
split

# Crating test and train data 
train <- subset(fraity_df, split == "TRUE")
test <- subset(fraity_df, split == "FALSE")

# Training the logistic regression model
lr_model <- glm(formula = Frailty ~ Height_in_inches + Weight_in_pounds + Age  + Grip_strength , data = train, family = "binomial")

# Printing the model
lr_model

# Predict test data based on created logistic model
predict <- predict(lr_model, test, type = "response")
predict

# Printing the summary of the model
print(summary(lr_model))

# Saving the results summary of the model
# Crating test and train data 
train <- subset(fraity_df, split == "TRUE")
test <- subset(fraity_df, split == "FALSE")

# Training the logistic regression model
lr_model <- glm(formula = Frailty ~ Height_in_inches + Weight_in_pounds + Age  + Grip_strength , data = train, family = "binomial")

# Printing the model
lr_model

# Predict test data based on created logistic model
predict <- predict(lr_model, test, type = "response")
predict

# Printing the summary of the model
print(summary(lr_model))

# Saving the results summary of the model
capture.output(print(summary(lr_model)),file="/Users/vd/Desktop/Spring 2023/PDS/ASSIGNMENT-1/1st Q/Results/frailty result.txt")













