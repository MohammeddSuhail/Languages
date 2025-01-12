#!/bin/bash

# Program to demonstrate the usage of arguments passed to a shell script

# Check if at least two arguments are provided
if [ $# -lt 2 ]; then
  echo "Usage: $0 <name> <age>"
  exit 1
fi

# Accessing command-line arguments
name=$1
age=$2

echo "Hello, $name! You are $age years old."

# Display all arguments
echo "All arguments: $@"

# Display the number of arguments
echo "Total number of arguments: $#"

# Example of using arguments in a calculation
if [ $age -ge 18 ]; then
  echo "$name is eligible to vote."
else
  echo "$name is not eligible to vote."
fi

# Loop through all arguments
echo "Listing all arguments:"
for arg in "$@"
do
  echo "$arg"
done

echo "Argument demonstration completed."
