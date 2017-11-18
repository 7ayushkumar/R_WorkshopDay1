# Dowloand titanic data from https://github.com/bshansen/Introduction-to-R

# set working directory
setwd("~/Downloads/titanic")

# read in both csv files
titanic1 = read.csv('Titanic1.csv')
titanic2 = read.csv('Titanic2.csv')
# use the head() function to view both data sets
head(titanic1) #gives first six rows
head(titanic2)
# Inner Join
titanic=merge(titanic1,titanic2, by = 'Id')
# use head() to view new data set
head(titanic)
?head()
head(titanic, n=20) #will show first 20 rows
# Left Join
titanic = merge(titanic1,titanic2, by = 'Id', all.x=T) #all left true means keep all left rows
# Right Join
titanic = merge(titanic1,titanic2, by = 'Id', all.y=T)
# Outer Join
titanic = merge(titanic1,titanic2, by = 'Id', all=T)
#################
# Save the Data
#################

# Save the data as a csv
write.csv(titanic,'Titanic.csv')
# Save the data as an R file
save(titanic,file='Titanic.Rda')
# remove the data and repoen with load()
titanic=NULL
load('Titanic.Rda')
# remove the data and use read.csv() to reload the data.
titanic=NULL
titanic=read.csv('Titanic.csv')
###############################
# VARIABLE DESCRIPTIONS:
###############################

# survival, Survived, (0 = No; 1 = Yes)
# pclass, Passenger Class, (1 = 1st; 2 = 2nd; 3 = 3rd)
# sex, Sex/Gender
# age, Age
# sibsp, Number of Siblings/Spouses Aboard
# parch, Number of Parents/Children Aboard
# fare, Passenger Fare
# embarked, Port of Embarkation, (C = Cherbourg; Q = Queenstown; S = Southampton)

# use str() to view the data types of each column

# Delete the Id and name variables.

# Add more description to 'embarked' by adding the port name
# embarked, Port of Embarkation, (C = Cherbourg; Q = Queenstown; S = Southampton)

# use str()
str(titanic)
titanic$embarked=ifelse(titanic$embarked=='C', 'Cherbourg',
                        ifelse(titanic$embarked=='Q', 'Queenstown', 'Southampton'))
# Check the mean of fare

mean(titanic$fare, na.rm = TRUE) #ignores null values




