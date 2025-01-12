#!/bin/bash

# Program to demonstrate if...else and case...esac statements

# 1. if...else Statement
# Check if a number is positive, negative, or zero
echo "Enter a number:"
read number

if [ $number -gt 0 ]; then
  echo "$number is positive."
elif [ $number -lt 0 ]; then
  echo "$number is negative."
else
  echo "$number is zero."
fi

# 2. case...esac Statement
# Menu-driven program to perform basic arithmetic operations
echo "Select an operation to perform:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read choice

echo "Enter two numbers:"
read num1 num2

case $choice in
  1)
    result=$((num1 + num2))
    echo "Sum: $result"
    ;;
  2)
    result=$((num1 - num2))
    echo "Difference: $result"
    ;;
  3)
    result=$((num1 * num2))
    echo "Product: $result"
    ;;
  4)
    if [ $num2 -ne 0 ]; then
      result=$((num1 / num2))
      echo "Quotient: $result"
    else
      echo "Error: Division by zero is not allowed."
    fi
    ;;
  *)
    echo "Invalid choice. Please select a valid option."
    ;;
esac

echo "Program completed."