# R uses vector operations so you do not have to loop though tables of data.

# VARIABLE ASSIGNMENT #######################
# You can use two ways to assign variables

a = 1 + 2
b <- 2 + 2
A <- 100 # R is case sensitive

# Data types

mynumeric <- 0.2
mynumeric <- 10

mylogical <- TRUE
mylogical <- F

mycharacter <- "my little story"
mycharacter1 <- 'my little story' # will convert to double quotes

myfactor <- as.factor("female")

vec1 <- c(1,2,43, 0.44)  # "c" for concatenate 
vec2 <- c(T,F,TRUE,FALSE)
vec3 <- c("a", "B", "c", "my little story", "2","d")
vec4 <- as.factor(c("female","male", "female", "male"))
vec5 <- c(1,TRUE, "b") # all elements become char if there is a char in the vector

#Lists can contain functions, vectors, lists, data frames

mylist <- list(vec1, vec2,vec3, 20, list(vec1,vec2,vec3), mean)

#Data frames are sub type of lists. Very similar to lists. Need ti have similar lengths.

df <- data.frame(a = vec1,b = vec2)
View(df) # to view data frame

# Matrix data type

mymatrix <- matrix(vec3, 3, 2)
colnames(mymatrix)

# INDEXING ########################

vec2[2] # shows position 2 of the vector

# naming vectors in a list

mylist <- list("a" = vec1, "vec2" = vec2,namewithoutquotes = vec3,  mynumber = 20, list(vec1,vec2,vec3), mean)

# use [:] to see vectors 1-4
mylist[1:4]

# filtering list
mylist$namewithoutquotes
# same as this
mylist[[3]]

# You can also filter a dataframe the same way
df$a
df[[1]]
df[[1]][4] # vector 1 at element 4
df$a[4] # vector 1 at element 4
df$a[1:2] # shows the 1st through 2nd element


df[1,2] # gives first row second column --> TRUE
df[1,] # all values on the first row --> 1, TRUE
df[c(1,3,4),] # values from these row. give an index of vectors 
# df[,2] === df$b

# for matrix
mymatrix[2,]

# FUNCTIONS ################################

new_division <- function(value1 , value2) {
  results <- value1 / value2
  return(results)
}

new_division(10,20) # returns 0.5
new_division(value2 = 10, value1 = 20) # returns 2





# STATISITCAL PROGRAMMING ####################

library(datasets)

head(iris) # head() shows the first six lines
summary(iris) # summary statistics 
plot(iris) # scatter plot matrix 

#clear plots
dev.off() # But only if there IS a plot

# clear console 

cat("\014")  # ctrl+L

# comment out high-lighted blocks - control + shift + c

install.packages("pacman") # package manager tool

require(pacman) # confirmation message
library(pacman) # no message

# these are packages to load every time

pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, lubridate, plotly, rio, shiny, stringr, tidyr) # load base packages that come with R manually

# clear packages 
p_unload(dplyr, tidyr, stinger) # clear these packages
p_unload(all) # clear all packages
detach("package:datasets", unload = TRUE) # for base packages

#---------------------------------------------------------------
                      # Basic Graphing

library(datasets)

head(iris)
?plot # help for plot function

plot(iris$Species) # categorical variable
plot(iris$Petal.Length) # quantitative variable
plot(iris$Species, iris$Petal.Width) # Cat vs Quant
plot(iris$Petal.Length, iris$Petal.Width) # quant pair
plot(iris) # entire data frame

#plot with options

plot(iris$Petal.Length, iris$Petal.Width,
     col = "#cc0000", # hex code for datalab.cc red
     pch = 19,        # use solid circles for points
     main = "Iris: Petal Length vs. Petal Width",
     xlab = "Petal Length",
     ylab = "Petal Width"
     )

# PLOT FORMULAS WITH PLOT()

plot(cos, 0 , 2*pi)
plot(exp, 1, 5)
plot(dnorm, -3, +3)

#Formula with options
plot(dnorm, -3, +3,
     col = "#cc0000",
     lwd = 5,
     main = "Standard Normal Distribution",
     xlab = "Z-Scores",
     ylab = "Density"
     
     )

detach("package:datasets", unload = TRUE) 

# Bar Charts ##############################################

head(pm)

barplot(pm$Legendary)                 # doesn't work

# Need a table with a frequencies for each category

HP <- table(pm$HP[140:150])                    # create table
Type <- table(pm$`Type 1`)  
barplot(HP)                           # Bar chart
barplot(Type)
plot(HP)                              # Default X-Y plot (lines)

# BASIC HISTORGRAMS ######################################

hist(pm$Attack[pm$`Type 1` == 'Fire'],
     main = "Fire Poke'Mon Attack Frequency",
     xlab = "Attack",
     ylab = "Freq")

# HISTOGRAM BY GROUP ####################################

# put graphs in 3 rows and 1 column

par(mfrow = c(3,1)) # allows you to see 3 charts at the same the time

hist(pm$Attack[pm$`Type 1` == 'Psychic'],
    
     xlim = c(140,200),
     breaks = 9,
     main = "Pyschic Poke Mon Attacks",
     xlab = "",
     col = "purple"
     
     )

hist(pm$Attack[pm$`Type 1` == 'Fire'],
     
     xlim = c(140,200),
     breaks = 9,
     main = "Fire Poke Mon Attacks",
     xlab = "",
     col = "red"
     
)

hist(pm$Attack[pm$`Type 1` == 'Bug'],
     
     xlim = c(140,200),
     breaks = 9,
     main = "Bug Poke Mon Attacks",
     xlab = "",
     col = "green"
     
)

# SCATTER PLOTS ############################

hist(pm$`Sp. Atk`)
hist(pm$`Defense`)

# Basic x-y plot for two quantitative variables

plot(pm$`Sp. Atk`, pm$Attack,
     pch = 19, # solid circle
     cex = 1.5, #make size 150%
     col = "#cc0000", #red
     main = "Attack VS Special Attack",
     xlab = "Special Attack",
     ylab = "Attack"
     
     )













