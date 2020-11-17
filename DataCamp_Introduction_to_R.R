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
















