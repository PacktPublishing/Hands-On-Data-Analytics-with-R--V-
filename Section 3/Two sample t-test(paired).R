# Importing the dataset
dataset = read.csv('Tomato.csv')

#Two sample t-test (paired)

# H0 = mean (FieldA & fieldB) = 0
# two sided paired t-test





names(dataset)
class(Size.of.plant)
class(FieldA)
class(FieldB)



boxplot(FieldA, FieldB)

plot(FieldA, FieldB)

abline(a=0, b=1)

t.test(FieldA, FieldB, mu=0, alt="two.sided", paired = T, conf.level = 0.99)
