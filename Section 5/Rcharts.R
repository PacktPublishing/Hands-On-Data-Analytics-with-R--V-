# Importing the dataset
dataset = read.csv('Salary_Data.csv')

head(dataset)

x = dataset$YearsExperience

y = dataset$Salary


names(dataset)
class(y)
class(x)

#Histogram



hist(y, main = "Salary Distribution",ylab = "y")



#Scatter Plot

plot(dataset$YearsExperience, dataset$Salary, xlab = "Experience", ylab = "Salary")



#Boxplot

boxplot(dataset$YearsExperience)

boxplot(dataset$Salary)

