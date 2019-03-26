#Import the dataset
dataset= read.csv('Cereals2.csv')


#install.packages('caTools')
library(caTools)
set.seed(123)
split=sample.split(dataset$Customer_Segment,SplitRatio = 0.8)
training_set = subset(dataset, split==TRUE)
test_set = subset(dataset, split==FALSE)

#Feature Scaling
training_set[-7]=scale(training_set[-7])
test_set[-7]=scale(test_set[-7])



#Fitting SVM
#install.packages('e1071')
library(e1071)

classifier= svm(formula=Customer_Segment ~ .,
                data=training_set,
                type='C-classification',
                kernel = 'linear')

#Predicting the test results
y_pred=predict(classifier, newdata=test_set[-7])

#Confusion Matrix
cm = table(test_set[,7], y_pred)
cm