# Importing the dataset
dataset = read.csv('Tomato.csv')

#Two sample t-test (Unpaired)

# H0 = [mean (Size of Plant) = Mean(FieldA *FieldB)]
# two sided unpaired t-test


attach(dataset)

attach(dataset)
data

names(dataset)
class(Size.of.plant)
class(FieldA)
class(FieldB)

levels(Size.of.plant)

boxplot(FieldA ~ Size.of.plant)

boxplot(FieldB ~ Size.of.plant)

boxplot(FieldA*FieldB ~ Size.of.plant)



t.test(FieldA~Size.of.plant, mu=0, alt= "two.sided", conf=0.95, var.eq=F, paired=F)
t.test(FieldA~Size.of.plant) 


t.test(FieldB~Size.of.plant, mu=0, alt= "two.sided", conf=0.95, var.eq=F, paired=F)
t.test(FieldB~Size.of.plant) 


t.test(FieldA*FieldB~Size.of.plant, mu=0, alt= "two.sided", conf=0.95, var.eq=F, paired=F)
t.test(FieldA*FieldB~Size.of.plant) 






