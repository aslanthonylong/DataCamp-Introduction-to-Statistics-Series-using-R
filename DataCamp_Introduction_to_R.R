# Title     : Data Camp Intro to R
# Objective : Complete Lessons and Upload Repo to Github
# Created by: Anthony S. Long
# Created on: 11/14/2020


#Change my_numeric to be 42
my_numeric <-42

#Change my_character to be universe
my_character <- "universe"

#Change my_logical to be FALSE
my_logical <- FALSE

#Creating Vectors
  ##Vector for Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

  ##Roulette winnings from Mon - Fri
roulette_vector <- c(-24, -50, 100, -350)

  ##Create Days Vector to not have to type days out
days_vector <- c("Monday", "Tuesday", "Wednesday","Thursday", "Friday")

# Assign the names of the day to roulette_vector and poker_vector
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Define a new variable based on a selection
## Wednesday is the third integer within the poker_vector
poker_wednesday <- poker_vector[3]

#Vector Selection
## Combining elements of vector
  # This can be thought of as "defining a new variable based on a selection"
## What if we want the results of the poker realized gains to represent the gains realized during mideweek?
poker_midweek <- poker_vector[c(2,3,4)]

# These elements within the vector can be written in a faster way
  # There is no need to list each element
poker_midweek <- poker_vector[C(2:4)]
# FYI : use can also select the days of the week and not type their numberic value
  # I.e. poker_midweek <- poker_vector [c("Tuesday", "Wednesday", "Thursday")]

# Selection by comparison
  # "<" for less than
  # ">" for greater than
  # "<=" for less than or equal to
  # ">=" for greather than or equal to
  # "==" for equal to each other
  # "!=" not equal to each other

# You can use these comparative equation lines to run on vectors
c(4,5,6) > 5 #Run This Seleciton "Ctrl+Enter"
### Result should be "FALSE, FALSE, TRUE"

### Example: Which days did you make money on poker?
### Assign selection variable for winnings
selection_vector_poker <- poker_vector > 0
print(selection_vector)
#Now let's select from poker_vector these winning days
poker_winning_days <- poker_vector[selection_vector_poker]
print(poker_winning_days)

## Do the same for roulette vector for repitition
selection_vector_roulette <- roulette_vector > 0
roulette_winning_days <- roulette_vector[selection_vector_roulette]
print(roulette_winning_days)

#Construct a Matrix
## 3 rows taht contain numbers 1 up to 9
matrix(data = 1:9, nrow = 3, byrow = TRUE)

# Analyze Matrices
## Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

regions <- c("U.S.", "non-U.S.")
titles_string <- c("A New Hope", "The Empire Strikes Back", "The Return of Jedi")
box_office_titles <- c(new_hope, empire_strikes, return_jedi)
star_wars_boxoffice <- matrix(box_office_titles, nrow = 3, ncol = 2, byrow = TRUE)

print(star_wars_boxoffice)

### Addnames to the matrix for easier visualization

colnames(star_wars_boxoffice) <- regions
rownames(star_wars_boxoffice) <- titles_string

print(star_wars_boxoffice)

#Calculate sums of row within the matrix that was just created
##Sums will be stored in new variable worldwide_revenue
worldwide_revenue <- rowSums(star_wars_boxoffice)

### Adding column or multiple columns
combined_revenue_matrix <- cbind(star_wars_boxoffice, worldwide_revenue)
# So what happened here? Using cbind(), I added the worldwide_revenue vector to the star_wars_boxoffice matrix
  # Next, I assigned the new, combined matrix to a new varible entitled "combined_revenue_matrix"
## As an FYI, you can add rows/combine matrices using "rbind()
phanton_menace <- c(474.5, 552.5)
attack_clones <- c(310.7, 338.7)
revenge_sith <- c(380.3, 468.5)
box_office_titles2 <-c(phanton_menace, attack_clones, revenge_sith)
regions2 <- c("U.S.", "Non U.S.")
titles_string2 <- c("The Phanton Menace", "Attack of The Clones", "Revenge of The Sith")
star_wars_boxoffice_seq <- matrix(box_office_titles2, nrow = 3, ncol = 2, byrow = TRUE)
colnames(star_wars_boxoffice_seq) <- regions2
rownames(star_wars_boxoffice_seq) <- titles_string2
all_revenue <- rbind(star_wars_boxoffice, star_wars_boxoffice_seq)
#the "all_revenue" variable is now a combination of the data from the first star wars matrix and the sequals matrix

### creating "total" revenue lines for analysis (different from 'all revenue')
  ### Add "Total" Column
total_title_rev <- rowSums(all_revenue)
totals_mtrx <- cbind(all_revenue, total_title_rev)
totals_string <- "Total"
Col_name_addition <- c(regions2, totals_string)
colnames(totals_mtrx) <- Col_name_addition
  ### Add "Total" Row
total_regional_rev <- colSums(all_revenue)
row_totals_string <- "Total"
totals_mtrx_all <- rbind(all_revenue, total_regional_rev)
row_name_addition <- c(titles_string, titles_string2, totals_string)
rownames(totals_mtrx_all) <- row_name_addition

### Selection of Matrix elements; They are typically formatted [rows,columns]
#### Exmple: I want to select the 3rd row of 4th column --- I'd write: my_matrix[3,4]
  # If I want multiple from whatever matrix ---- I'd write: my_matrix[1:3,2:4]
    ## This would select rows 1 through 3 and columns 2 through 4
### Select the non-U.S. revenue for all movies
non_us_all <- all_revenue[,2]
### then find avg. for all of the non-US regional box office revenue
mean(non_us_all)
### Select the non-US revenue for the first two movies
non_us_some <- all_revenue[1:2,2]
### Avg. of the first two moves (non-US)
mean(non_us_some)

### Arithmetic with Matrices - using math operations with matrix
### Example: 2 * my_matrix would multiply all values within my matrix by 2
### Assume each ticket price was $5 and you wanted to know how many visitors there were
number_visitors <- all_revenue / 5

#Factors
## Assign "factors" to theory variable
theory <- "factors"
# To create factors in R, need to use factor()
  # First, create vector that contains all observations that belong to a lmtd. number of categories
sex_vector <- c("Male", "Female", "Female", "Male", "Male")
# convert sex_vector to a factor
factor_sex_vector <- factor(sex_vector)
## print factor_sex_vector
print(factor_sex_vector)
### Two types of categorical variables: nominal categorical; ordinal categorical
  ### nominal: categorical variable without implied order (list of animals)
  ### ordinal: categorical variables with implied natural ordering
      # example of ordinal: the variable temperature_vector with categories: "High", "Medium", "Low"

## NOMINAL: ANIMALS
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
print(factor_animals_vector)
## ORDINAL: TEMPERATURE
temperature_vector <- c("High", "Low", "High", "Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
print(factor_temperature_vector)

# Factor Levels
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
# specify the levels of factor_survey_vector
  # WARNING: THE ORDER WITH WHICH YOU ASSIGN LEVELS IS IMPORTANT!
    # IF YOU DON'T SPECIFY LEVELS, R WILL AUTOMATICALLY ASSIGN THEM ALPHABETICALLY
levels(factor_survey_vector) <- c("Female", "Male")
print(factor_survey_vector)
# Generate summary for survey_vecotr
summary(survey_vector)
# Generate summary for factor_survey_vector
summary(factor_survey_vector)

## Comparing elements of a vector
male <- factor_survey_vector[1]
female <- factor_survey_vector[2]
female < male
## This should return "NA" when trying to compare values in a factor, since the idea doesn't make sense
### This happened beacuse these are nominal categorical variables

## Try comparing speeds, which are ordinal categorical variables
## Assign to variable speed_vector: Analyst 1 "medium", Analyst 2 "slow", Analyst 3 "slow", Analyst 4 "medium", Analyst 5 "fast"
speed_vector <- c("medium", "slow", "slow", "medium", "fast")
## convert speed_vector to ordinal factor since categories have natural ordering
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("slow", "medium", "fast"))
print(factor_speed_vector)
summary(factor_speed_vector)

### Comparing ordered factors
da2 <- factor_speed_vector[2]
da5 <- factor_speed_vector[5]
da2 > da5
## As you'll see if you run the code, da2 (data analyst 2) is NOT faster than da5 (data analyst 5)

### DATA FRAMES

# When doing a market research survey, you'll have the following questions:
  # Yes/No Questions - Logical
  # Value/Numeric ("How old are you?")
  # Character ("What is your opinion on this product?")

# Data Frame - has the variables of data set as columns
  # Has the observations as rows
# Working "mtcars" dataset

# Useful commands/functions
  # head() - shows the first observations of data set
  # tail() - shows the last observations in data set
# Call head() on mtcars
head(mtcars)
# Structure - str() function
str(mtcars)
# Create own data frame
name <- c("Mercury", "Venus", "Earth",
          "Mars", "Jupiter", "Saturn",
          "Uranus", "Neptune")
type <- c("Terrestrial planet",
          "Terrestrial planet",
          "Terrestrial planet",
          "Terrestrial planet", "Gas giant",
          "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532,
              11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03,
              0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)
# use data.frame() to include select vectors into your data set
planets_df <- data.frame(name,type,diameter,rotation,rings)

str(planets_df)

# Selection of Data elements - It's similar to selection of martices!
  #Use [row,column] same as before
# Print out diameter of Mercury (row 1, column 3)
planets_df[1,3]

# Print out data for Mars (entire fourth row)
planets_df[4,]
## FYI : A possible disadvantage of this approach is that you have to know (or look up) the column number of the
  # variable which gets hard if you have a lot of variables. It is often easier to just make use of the variable name
    # Example to find variable "type": planets_df [1:3, "type"]

# Practice : selet the first 5 values of the diameter column
planets_df[1:5,"diameter"]
#Only planets with rings
# Instead of planets_df[,3] or planets_df[,"diameter"] we can use shortcut
  ## shortcut planets_df$diameter - only works if columns have names
rings_vector <- planets_df$rings
print(rings_vector)
# use the rings vector just created to select the data for the four planets with rings
planets_df[rings_vector, ]
# should show us the names of only planets that have rings

# using subset()
# how to use: subset(my_df, subset = some condition)
# select planets with diameter less than 1
subset(planets_df, subset = diameter < 1)

# SORTING
# planets_df is pre-loaded in your workspace

# Use order() to create positions
positions <-  order(planets_df$diameter)

# Use positions to sort planets_df
planets_df[positions, ]

### Creating lists
# Use : list(comp1, comp2...)
# Vector with numerics from 1 up to 10
my_vector <- 1:10

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Adapt list() call to give the components names
my_list <- list(my_vector, my_matrix, my_df)
names(my_list) <- c("vec", "mat", "df")
# Note: You can also give items in list names by doing the following:
  ## my_list <- list(name1 = comp1, name2 = comp2, ...)
# Print out my_list
my_list

# Selecting elements from a list
# one to select a component of list is to use the numbered position of the component within the list
  # example: my_list[1]
    # this would pull vec or vector
  # refer to names of componenets with [[]] or $
    # example: my_list[["vector]]
    # example2: my_list$vector
  # sometimes, it'll be necessary to select specific elements out of components
    # example: my_list[[2]][1]
      # this would select the 2nd component called mat or my_matrix and then would select the first element of mat
my_list[[2]][1]
#check
print(my_matrix)
# it did select the first element (1) of the second componenet (my_matrix)

# Practice with lists
# Use the table from the exercise to define the comments and scores vectors
scores <- c(4.6, 5, 4.8, 5, 4.2)
comments <- c("I would watch it again", "Amazing!", "I liked it", "One of the best movies", "Fascinating plot")

# Save the average of the scores vector as avg_review
avg_review <- mean(scores)

# Combine scores and comments into the reviews_df data frame
reviews_df <- data.frame(scores, comments)

# Create and print out a list, called departed_list
departed_list <- list(movie_title, movie_actors, reviews_df, avg_review)
print(departed_list)





























































