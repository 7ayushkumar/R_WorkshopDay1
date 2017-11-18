### Base Graphics

# https://www.statmethods.net/graphs/index.html

library(dplyr)

## load iris dataset
iris=iris
str(iris)

# Histogram
hist(iris$Petal.Length)
# Histogram with Custom title and X axis
hist(iris$Petal.Length, main='Iris Histogram', xlab='Petal length')
# Histogram with Custom title and X axis, add breaks and color
hist(iris$Petal.Length, main='Iris Histogram', xlab='Petal length', breaks=50, col='blue') ## save as svg for better viewability



# Scatterplot

plot(iris$Sepal.Length, iris$Petal.Length,       # x variable, y variable
     col = iris$Species,                          # colour by species(a variable within datafram)
     pch = 16,                                    # type of point to use
     cex = 1,                                     # size of point to use
     xlab = "Sepal length",                       # x axis label
     ylab = "Petal lenght",                       # y axis label
     main = "Flower Characteristics in Iris")     # plot title

legend (x = 6.5, y = 4, legend = levels(iris$Species), col = c(1:3), pch = 16) ## adds the box to identify color by variable

# Bar Plot
bar_data=iris %>%
  group_by(Species) %>%
  summarise(Petal.Length=mean(Petal.Length))

barplot(bar_data$Petal.Length, names=bar_data$Species)

### ggplot2 is the most common used graphics package in R.  It has great flexibility, 
### allows for a wide variety of graphs, and has an easy to understand grammar.

### Additional resources:
### https://www.rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf
### http://docs.ggplot2.org/current/

# Install the ggplot2 library and load it.
install.packages("ggplot2")
library(ggplot2)

# Assign the diamonds data
diamonds=diamonds
# View the structure of diamonds
str(diamonds)
# Create a ggplot and assign just price to the aesthetics.
ggplot(diamonds, aes(price)) + geom_histogram() ## use diamonds dataframe aes consists of columns you want to choose
                                ##price column to use, then use geom for shape 
# Create a histogram of price by adding a geometry.
p = ggplot(diamonds, aes(price))
# Assign the ggplot to p without a geometry.
p + geom_density() 
# Create a density plot by adding geom_density() to p
p + geom_histogram(bins=50) + ggtitle('Histogram of Diamonds Price')
# Create a histogram of p, set bins = 50, and add a title.

# Create a scatter plot carat and price
ggplot(diamonds, aes(carat,price)) + 
  geom_point()
# Color the scatterplot by the cut variable
ggplot(diamonds, aes(carat, price, col=cut)) +
  geom_point(size=.5) ##to adjust size use geom_point(size=1) or read documentation ?geom_point

# Color the scatterplot by the x variable
ggplot(diamonds,aes(carat, price, col=x)) + ## color by variable i.e x in this case
  geom_point()
# Color the scatterplot blue by placing the color inside geom_point()
# Add a title and customize the x and y axis
ggplot(diamonds, aes(carat,price)) + 
  geom_point(col='blue') + 
  ggtitle('Scatterplot of Diamond Carat and Price') +
  xlab('Carat') + 
  ylab('Price')

## Practice:
## Assign the economics data
economics=economics
## View the structure of economics
str(economics)
## create a histogram of pce
ggplot(economics, aes(pce)) +
  geom_histogram()
## create a histogram of psavert
ggplot(economics, aes(psavert)) +
  geom_histogram()
## Create a scatterplot of psavert and pce, add geom_smooth() to the plot
ggplot(economics, aes(psavert, pce)) +
  geom_point() + 
  geom_smooth()  ## adds a trendline to the scatterplot
## Create a scatterplot of psavert and pce, 
ggplot(economics, aes(psavert, pce)) +
  geom_point()
## add geom_smooth(method = lm) to the plot.
## Add a title, label the x-axis "Personal Savings Rate", 
##and y-axis "Personal Consumption Expenditures".
ggplot(economics, aes(psavert, pce)) +
  geom_point() + 
  geom_smooth(method=lm) +
  ggtitle('Scatterplot Personal Savings Rate and Personal Consumption') +
  xlab('Personal Savings Rate') +
  ylab('Personal Consumption Expenditure')
# Line Graph
# Create the variable unemployment_rate in the economics 
# data frame by dividing unemploy by pop.
economics$unemployment_rate=economics$unemploy/economics$pop
# Create a line graph of unemployment_rate on date
ggplot(economics,aes(date,unemployment_rate)) +
  geom_line()
# Bar Chart
ggplot(diamonds, aes(cut)) +
  geom_bar()
# Create a barchart of the count of cut

# Use dplyr to create a barchart of mean price by cut, add the fill option
bar_data=diamonds %>%
  group_by(cut) %>%
  summarise(price=mean(price))

ggplot(bar_data, aes(cut, price)) +
  geom_bar(stat='identity')
# Create a scatterplot of carat and price. Use facet_wrap on cut.

ggplot(diamonds, aes(carat, price)) +
  geom_point() +
  facet_wrap(-cut)