dataset=read.csv('Ads.csv')
dataset=dataset[3:5]


dataset$Purchased=factor(dataset$Purchased, levels=c(0,1))

#install.packages('caTools')
library(caTools)
set.seed(123)
split=sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set=subset(dataset, split==TRUE)
test_set=subset(dataset, split==FALSE)

training_set[-3]=scale(training_set[-3])
test_set[-3]=scale(test_set[-3])



#install.packages('rpart')
library(rpart)

classifier=rpart(formula = Purchased~., data=training_set)

y_pred=predict(classifier, newdata = test_set[-3], type='class')


cm=table(test_set[,3], y_pred)
cm
