# Exercise 4: Working with Data Frames

# Load R's "USPersonalExpenditure" dataest using the `data()` function
data(USPersonalExpenditure)

# The variable USPersonalExpenditure is now accessible to you. Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme
data.frame(USPersonalExpenditure)
# Create a new variable by passing the USPersonalExpenditure to the data.frame function
new.variable <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
colnames(new.variable)

# Why are they so strange?
#Doesn't let name the column start with numbers

# What are the row names of your dataframe?
rownames(new.variable)

# Create a column `category` that is equal to your rownames
new.variable$category <- rownames(new.variable)

# How much money was spent on personal care in 1940?
personal.care.1940 <- new.variable["Personal Care", "X1940"]

# How much money was spent on Food and Tobacco in 1960
food.1960 <- new.variable["Food and Tobacco", "X1960"]

# What was the highest expenditure category in 1960?
highest.1960 <-new.variable$category[new.variable$X1960 == max(new.variable$X1960)]

### Bonus ###

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year
HighestSpending <- function(year) {
  return(new.variable$category[new.variable[year] == max(new.variable[year])])
}
# Using your function, determine the highest spending category of each year
HighestSpending('X1940')
HighestSpending('X1945')
HighestSpending('X1950')
HighestSpending('X1955')
HighestSpending('X1960')

# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
