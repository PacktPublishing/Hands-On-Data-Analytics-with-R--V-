# Importing the dataset
dataset = read.csv('Data1.csv')

attach(dataset)
datasets
co
names(dataset)

class(Field.A)

summary(Field.A)


boxplot(dataset)

#H0: mu < 15
#one sided 95% confidence interval for mu

t.test(dataset, mu=15, alternative = "less", conf.level = 0.95)
#OR
t.test(dataset, mu=15, alt = "less", conf = 0.95)
