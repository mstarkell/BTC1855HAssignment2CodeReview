# Assignment 2 Code Review: Alanna Olteanu

# Assignment 2 - Coding in R
# Alanna Olteanu
# Script to identify Armstrong/Narcissistic numbers

# Note - all code review comments are tagged with a **

# Prompting the user to enter a three-digit positive number.
number <- readline(prompt = "Please enter a three-digit positive number: ")

# Checking if the user input is numeric. If not, the program quits.
if (is.na(as.integer(number))) {
  print("Error: Input is not a numeric value.")
  quit(save = "no")
}
# **Good defensive programming here.

# Converting the input to an integer.
number <- as.integer(number)

# Checking if the number is three digits long. If not, the program quits.
# **Good defensive programming again.
if (number < 100 | number > 999) {
  print("Error: Input is not a three-digit number.")
  quit(save = "no")
}
# **This was effective at preventing incorrect answers to the prompt
# **If the user inputs a negative number, a number that is not three digits, or characters, the program quits and will not provide an output. Good job!

# Checking if the number is narcissistic.
# **When inputting a narcissistic number (e.g., 153 or 407), the script correctly identified it as such.
# **Alternatively, when a non-narcissistic number was inputted, the script was able to identify it correctly. 
digits <- c(number %/% 100, (number %/% 10) %% 10, number %% 10)
narcissistic <- sum(digits^3)
# **Assigning a name to the formula for a narcissistic number and then inputting that into the subsequent ‘if’ statement enhanced the readability of your code and kept it simple

if (number == narcissistic) {
  print(paste(number, "is a narcissistic number!"))
} else {
  print(paste(number, "is not a narcissistic number."))
}
# **The only flaw I was able to identify in this script was that it accepts answers to the prompts with decimals in them.
# **For example, when inputting the number 153.683, the code states that this number is a narcissistic number
# **The code accepts this as a satisfactory answer to the prompt because this number is in the 100 – 999 range
# **To account for this, the following line of code: (as.numeric(number)) %% 1 == 0 could be added into another 'if' statement above
# **his line of code would ensure that the answer to the prompt does not contain any decimals and prevent the code from incorrectly identifying decimal-containing numbers as narcissistic

# **Additional comments
# **This code is written in a manner that was easy to follow, with appropriate comments delineating what each section of code was intended to do.
# **The code functioned as intended, effectively executing the instructions outlined in the assignment description.
# **Overall, I believe the code for this assignment satisfactorily meets all the requirements including proper structure, style, logic, performance, readability, and functionality. Great job!


