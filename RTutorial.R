# R uses vector operations so you do not have to loop though tables of data.

# VARIABLE ASSIGNMENT 
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

mymatrix <- matrix(vec3, 2)
colnames(mymatrix)

# Indexing

vec2[2] # shows position 2 of the vector





# STATISITCAL PROGRAMMING

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

# Bar Charts


