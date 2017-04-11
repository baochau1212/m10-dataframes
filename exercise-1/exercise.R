# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks scored the first 4 games of last season
# Hint: (google "Seahawks scores 2016")
seahawks <- c(31, 25, 20, 6)

# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
against <- c(24, 31, 25, 6)

# Combine your two vectors into a dataframe
my.data <- data.frame(seahawks, against)

# Create a new column "diff" that is the difference in points
my.data$diff <- my.data$seahawks - my.data$against

# Create a new column "won" which is TRUE if the Seahawks wom


# Create a vector of the opponents


# Assign your dataframe rownames of their opponents
rownames(my.data) <- opponents
