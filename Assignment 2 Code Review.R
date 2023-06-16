# Assignment 2 - Coding in R
# Alanna Olteanu
# Script to identify Armstrong/Narcissistic numbers

# Prompting the user to enter a three-digit positive number.
number <- readline(prompt = "Please enter a three-digit positive number: ")

# Checking if the user input is numeric. If not, the program quits.
if (is.na(as.integer(number))) {
  print("Error: Input is not a numeric value.")
  quit(save = "no")
}

# Converting the input to an integer.
number <- as.integer(number)

# Checking if the number is three digits long. If not, the program quits.
if (number < 100 | number > 999) {
  print("Error: Input is not a three-digit number.")
  quit(save = "no")
}

# Checking if the number is narcissistic.
digits <- c(number %/% 100, (number %/% 10) %% 10, number %% 10)
narcissistic <- sum(digits^3)

if (number == narcissistic) {
  print(paste(number, "is a narcissistic number!"))
} else {
  print(paste(number, "is not a narcissistic number."))
}