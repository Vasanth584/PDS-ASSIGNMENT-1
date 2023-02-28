# Importing the required libraries into R
library(ggplot2)
library(dplyr)

# Importing the cleaned data set and creating a data frame
std_df <- read.csv("/Users/vd/Desktop/Spring 2023/PDS/ASSIGNMENT-1/2nd Question(Student)/Cleaned Data/Cleaned Data StudentPerformance_Data.csv")

# Viewing the data frame
View(std_df)

# Checking the data type pf each variable in the data frame
str(std_df)

# Checking the data frame for null values
colSums(is.na(std_df))

# Analyzing the student performance data frame

# Plot1
# Creating the first visualization based on student's Gender and their scores in writing
# Calculating average of Writing Scores
Average = mean(std_df$Writing_Score)

# Plotting the visualization
ggplot(std_df, mapping = aes(Average, fill = Gender)) + geom_bar(position = "dodge") +
  ggtitle("Average of Writing Scores by Gender") + xlab("Average Writing Score") + ylab("Count") + labs (fill = "Gender")

# The above visualization shows the information about the average of Writing scores by gender in student performance data set. A bar plot is used to show
# the averages by gender. The female gender is colored with red and the male gender is colored with blue. From the analysis,
# it is observed that the females have highest average in Writing when compared with the males. This plot is useful for the 
# analyst who wants to analyze the average of Writing scores. It is used show the patterns or trends quickly.

# Plot 2
# Creating second visualization based on the relationship between reading score and Maths score
ggplot(std_df, aes(x = Reading_Score, y = Math_Score)) + 
  geom_point()+ geom_smooth() + 
  ggtitle("Relationship between Reading and Math Scores") + xlab("Reading Score") + ylab("Maths Score")

# The above visualization shows the information about the relationship between reading and Maths scores. 
# A scatter plot is used to show the relationship between them. The x - axis represents the reading score and the 
# y - axis represents the Maths score. It is observed that there is a positive relationship between the reading and Maths scores.
# This visualization is helpful for the analyst who wants to compare the relationship among two variables.

# Plot 3
# Creating third visualization based on the variation of Reading scores among different groups
boxplot(std_df$Reading_Score ~ std_df$Lunch, main = "Variation of Reading Scores among the Groups", 
        xlab = "Groups", ylab = "Averages", col = "blue")

# The above visualization shows the information about the variation in Reading scores among the groups. 
# A box plot is used to show the variation. The boxes were colored in blue. The thick black line in the middle of the boxes
# shows the average of each group.This visualization helpful in analysing the variables among different groups.

# Plot 4
# Creating fourth visualization which shows the distribution of Maths score data
# Plotting the histogram
hist(std_df$Math_Score, main = "Distribution of Maths Score", xlab = "Maths Score", ylab = "Count", col = "pink")

# The above plot shows the information about the distribution of Maths score variable. A histogram is used to show the skewness of data.
# The histogram is colored in pink. It is observed that the data is distributed more between 60 and 80.
# These kind of visualizations is used to show the distribution of data.

# Plot 5
# Creating fifth visualization
ggplot(std_df, aes(x=factor(1), fill = Race_or_Ethnicity))+
  geom_bar(width = 2)+ labs(title = "Distribution of lunch types among the students") +
  coord_polar("y")

# The above plot shows the information about the distribution of Race_or_Ethnicity types among the students. A pie chart is used to display the information.
# The group D is colored in blue and the group C is colored in green as follows. It is observed that there is more Race_or_Ethnicity in Group D and C type than the other.
# These kind of charts helpful in showing the percentages of data in whole.