#############################
# Numeric Operations
#############################

# An addition 5+5
5+5
# A subtraction 5-5

# A multiplication 3*5

# A division (5 + 5)/2

# Exponentiation 2^5

#######################
# Assign the value 42 to x and 100 to y

# Print out the value of the variables x and y

####################################
# Create vectors, numeric_vector, character_vector, and boolean_vector
# Assign the numeric vector the values 15, 27, 105
# Assign the character vector the values a, b, c
# Assign the boolean vector the values FALSE, TRUE, FALSE
numeric_vector = c(15,27,105)
char_vector=c('a','b','c')
boolean_vector=c(FALSE,TRUE,FALSE)

# check the structure of each vector
str(numeric_vector)
str(char_vector)
str(boolean_vector)
# Create a data frame of the 3 vectors
df = data.frame(numeric_vector,char_vector,boolean_vector)
# View the structure of the data frame.
str(df)

# View a summary of the data frame.
summary(df)
# Print each variable of the data frame.
df$numeric_vector
# Create numeric vector 2
df$numeric_vector2 = c(1,2,3)

# Add numeric_vector1 and numeric_vector2 to create numeric_vector3
df$numeric_vector3 = df$numeric_vector + df$numeric_vector2 

# perform the sum, mean, min, max, sd, and quantile functions on numeric_vector3
sum(df$numeric_vector)

####################################
# Create a data frame
####################################

## Create vectors
## assign x = 1 through 5
## assign y = 5, 10, 15, 20, 25
## assign z = a, b, c, d, e
x=1:5
x
## create a data frame of x, y z names my_data_frame


## print each variable in my_data_frame


## creaate variable 'a' in my_data frame equal to x plus y
## varaible b equal to x divided by y
## variable c equal to x multiplied by y

# Descriptive Statistics
# perform the sum, mean, min, max, sd, and quantile functions on a variable in my_data_frame


# perform the summary on variable 'a' and then on entire data frame

# delete variable from my_data_frame
df$numeric_vector2=NULL
# perform summary on my_data_frame

#####################
# Read data into R
#####################

# Dowloand titanic data from https://github.com/bshansen/Introduction-to-R

# set working directory
setwd("~/Documents/Introduction-to-R")

# read in both csv files
titanic1 = read.csv('Titanic1.csv')
# use the head() function to view both data sets

# Inner Join

# use head() to view new data set

# Left Join

# Right Join

# Outer Join

#################
# Save the Data
#################

# Save the data as a csv

# Save the data as an R file

# remove the data and repoen with load()

# remove the data and use read.csv() to reload the data.

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

# Check the mean of fare






