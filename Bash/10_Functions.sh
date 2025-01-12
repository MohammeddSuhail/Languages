#!/bin/sh

# syntax:
# function_name () { 
#    list of commands
# }

# Use return to indicate success (0) or failure (non-zero).

# Define your function here
Hello () {
   echo "Hello World $1 $2"
   return 0
}

# Invoke your function
Hello Zara Ali


# Function 1: Prints the square of a number (without return statement)
print_square() {
    local num=$1    # Local variable
    local square=$((num * num))
    echo "The square of $num is $square"
}

# Function to perform division and return the result
divide_numbers() {
    local num1=$1
    local num2=$2
    
    # Check if the denominator is 0
    if [ $num2 -eq 0 ]; then
        echo "Error: Division by zero"
        return 1  # Exit function early due to error (division by zero)
    fi
    
    local result=$(( num1 / num2 ))
    echo "Result of division: $result"
    return 0  # Indicate success
}

# Call the print_square function
print_square 5

# Call the check_positive function
divide_numbers 5 0    # returned 1
divide_numbers 5 2    # returned 0

# Check the exit status of the function
if [ $? -eq 0 ]; then
    echo "Division completed successfully."
else
    echo "Division failed."
fi