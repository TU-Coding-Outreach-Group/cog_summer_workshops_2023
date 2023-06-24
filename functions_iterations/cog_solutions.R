## -- Solutions to COG_functions_iteration_workshop -- #

# - Activity_01 - #

#1.  Fill in the blanks in the code so that `my_square_root(16)` returns `4`. 
my_square_root <- function(input){
  return_value <- sqrt(input)
  return(return_value)
}

my_square_root(16)


#2.  Fill in the blanks in the code so that `my_max_minus_min(c(4,7,1,6,8))` returns `7`
my_max_minus_min <- function(input){
  return_value <- max(input) - min(input)
  return(return_value)
}

my_max_minus_min(c(4,7,1,6,8))

# - Activity_02 - #

#1.  Make a function that takes a vector and sums it up after it squares it.

**To test**: use `sample_vector <- c(11,34,21,46,48,74,58,33,23,46,93)`

such that `sum_squares(sample_vector)` should return `27361`


# description: eb_sum_squares takes a vector, squares it and sums the squares
# input: a numeric vector
# output: a sum of squares of input vector

sample_vector <- c(11,34,21,46,48,74,58,33,23,46,93)

sum_squares <- function(a_vec){
  squared <- a_vec^2
  end <- sum(squared)
  return(end)
}
sum_squares(sample_vector)


#2.  Make a function that takes a number, a string, and a separator and combines them. Hint: paste() and paste0() could be helpful functions here!

**To test**: `num_hello(1, "hello", ".")` returns `"1.hello"`


# description: eb_combine takes a number, string and separator and combines it into a single string
# input: a number, "string", "separator"
# output: a string with "num-sep-string"
# requires: {stringr}

combine <- function(number, string, sep){
  phrase <- str_c(number, sep, string)
  return(phrase)
}

combine(1, "hello", ".")


#3.  Write a function to convert farenheit to centegrade (Celcius = (Farenheit - 32) x 5/9). Get your function to print out your result in the following format: "Farenheit : *value of oF* is equivalent to *value oC* centigrade."

**To test:** `temp_conversion(23)` should return `"Farenheit: 23 is equivalent to -5 centigrade"`

# description: temp_conversion takes a number in Farenheit and converts it to centigrade
# input: a number
# output: a string with "num-sep-string"
# requires: {stringr}

temp_conversion <- function(farenheit) {
  con <- (farenheit - 32) * 5/9
  phrase <- str_c("Farenheit: ", farenheit, " is equivalent to ", con, " centigrade")
  return(phrase)
}


temp_conversion(23)


# - Activity_03 - #

set.seed(2023)

grad.credits <- 0 # keep track of credits that count towards graduation, need 120 credit hours
course_offerings <- c(2,2,3,3,4,4,4,4,4,4,4,4,4,4) # courses are between 2-4 credit hours each, only 4 courses allowed per semester
semester_total <- 0 # keep track of credits per semester
semester <- 0 # keep track of how many semesters it will take to finish

while(grad.credits < 120){
  semester <- semester + 1
  semester_total <- sum(sample(course_offerings, size = 4))
  grad.credits <- sum(grad.credits + semester_total)
  
  cat("semester", semester, ": credits", semester_total, "\n")
}

# print the total semesters and credits at the end
cat("total semesters", semester, "\n", "total credits earned", grad.credits)

# - Activity_04 - #

#1.  Print "COG workshops are the best." three times

#`[1] "COG workshops are the best."`

#`[1] "COG workshops are the best."`

#`[1] "COG workshops are the best."`


for(i in 1:3){
  print("COG workshops are the best.")
}


#2.  evaluate the number of characters in each word in this string of words


set.seed(2023)
word_string <- sample(stringr::words, size = 30) # pull 30 elements at random from stringr::words

# loop over the word_string and evaluate the number of characters in each word then print the results
for(i in word_string){
  word.length <- nchar(i)
  message <- paste(i, "has", word.length, "letters")
  print(message)
}


#3.  What if we wanted to just return the number of characters from each word into a vector? This is really similar to #2, but instead of printing the number of letters per word, we're going to get them into a vector. **End result 'foo' should start like this:**

#|           | word.length |
#|-----------|-------------|
#| trade     | 5           |
#| learn     | 5           |
#| introduce | 9           |
#| god       | 3           |

set.seed(2023)
word_string <- sample(stringr::words, size = 30) # pull 30 elements at random from stringr::words

# loop over the word_string and evaluate the number of characters in each word then print the results


# initialize an object to keep our results
word.length <- c()

for(i in word_string){
  word.length[i] <- nchar(i)
}

foo <- as.data.frame(word.length)

# - Activity_05 - #

# 1. With this patient data we want to find the average value (from the three replicate values 1, 2, 3) for each patient. Take this loop and turn it into an apply statement or statements (depends upon how you want to solve) that is a functional equivalent (it produces a very similar/the same result).

set.seed(2023)
patient_data <- data.frame(patient_id = c(1:5),
                           age = c(23,55,34,64,12),
                           value1 = rnorm(5),
                           value2 = rnorm(5),
                           value3 = rnorm(5))

patient_data


# how to do it for just the first row
mean(unlist(patient_data[1,3:5]))

# -- How to find the mean values for each patient in a loop -- #
means <- numeric()

for(i in 1:nrow(patient_data)){
  means[[i]] <- mean(unlist(patient_data[i,3:5]))
}

means


# # find avg value score for each patient
# apply(patient_data[3:5], 1, mean) # outputs vector for means of values for each patient
# 
# lapply(patient_data[3:5], mean) # outputs list of means of each value (mean val1, mean val2, NOT PATIENT SPECIFIC)
# 
# sapply(patient_data[3:5], mean) # outputs vector of means of each value (mean val1, mean val2, NOT PATIENT SPECIFIC)

#2. Finding the mean and standard deviation for each column in mtcars. Take this loop and turn it into an apply statement or statements (depends upon how you want to solve) that is a functional equivalent (it produces a very similar/the same result).
#--- A loop to produce the mean and standard deviation for each column in mtcars ---#
# output into 'combine' list

combine <- list()

#find the mean and sd for each column in mtcars
for(i in 1:ncol(mtcars)){
  m <- mean(mtcars[,i], na.rm = TRUE)
  sd <- sd(mtcars[,i], na.rm = TRUE)
  combine[[i]] <- rbind(m,sd) 
}  

combine


# there are a few ways to do this with the apply family, here are some options that produce the same results, but just each formatted a bit differently. 

# # apply with column specification (single vector outputs and combined later)
# mu<-apply(mtcars, 2, mean)
# sd<-apply(mtcars, 2, sd)
# apply_df<-data.frame(mu,sd)
# apply_df
# 
# # this also sort of works
# unlist(apply(mtcars, 2, function(x){
#   data.frame(mu = mean(x, na.rm = TRUE),
#   sd = sd(x, na.rm = TRUE))
# }))
# 
# # lapply with dataframe -- I think I like this the best
# lapply(mtcars, function(x) {
#   data.frame(mu = mean(x, na.rm = TRUE),
#   sd = sd(x, na.rm = TRUE))
#   }
#   )
# 
# # lapply with cbind
# lapply(mtcars, function(x) {
#   cbind(mu = mean(x, na.rm = TRUE),
#   sd = sd(x, na.rm = TRUE))
#   }
#   ) 
# 
# # lapply with dataframe piped to bind_rows - a very pretty option 
# lapply(mtcars, function(x) {
#   data.frame(mu = mean(x, na.rm = TRUE),
#   sd = sd(x, na.rm = TRUE))
#   }
#   ) %>%
#   bind_rows(.id = c("variable"))

## — SECTION 2 — ##
# Step 1. import_date function

import_date <- function(date){
  path <- glue("opioid_data/experiment_01_date_{date}.txt")
  dat <- read_delim(path)
  return(dat)
}
# Step 2. Load folder iteratively 
# -- part 1. make a vector of dates for us to iterate over -- #
dates <- as.Date("2022-03-07") + 0:7 
dates <- str_replace_all(dates,"-", "_")
dates

# -- part 2. iterate over those dates and use our custom function to load them -- #
all_data<-list() # initiate empty list
# 
for (i in 1:length(dates)) { # for every item in 1 thru the number of items in files
  temp_file<-dates[i] # temporarily name the ith index in files as temp_file
  day<-import_date(temp_file) #then use my custom function to load the file into "day"
  all_data[[i]]<-day # stick that data object into our initiated list at the ith index
}

View(all_data) # need to use View() and not view() to see a list of lists... not sure why but lower cas, tibble::view() returns a weird like cbind version of the data...

# -- option as apply -- #
apply_all_data <- lapply(dates, function(x) {import_date(x)}) # outputs list of lists
View(apply_all_data)

# -- speed comparison -- #

# loop takes: 0.845 seconds
system.time(for (i in 1:length(dates)) {  
  temp_file<-dates[i] 
  day<-import_date(temp_file) 
  all_data[[i]]<-day 
})

# apply takes: 0.858 seconds
system.time(lapply(dates, function(x) {import_date(x)}))
