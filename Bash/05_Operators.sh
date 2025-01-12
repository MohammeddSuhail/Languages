#!/bin/bash

# Demonstration of Shell Basic Operators

# 1. Arithmetic Operators
num1=10
num2=5
sum=$((num1 + num2))
diff=$((num1 - num2))
((prod = num1 * num2))
quot=$((num1 / num2))
mod=$((num1 % num2))
exp=$((num1 ** num2))  # Exponentiation

echo "Arithmetic Operations:"
echo "Sum: $sum"
echo "Difference: $diff"
echo "Product: $prod"
echo "Quotient: $quot"
echo "Modulus: $mod"
echo "Exponentiation: $exp"

# 2. Relational Operators
if [ $num1 -eq $num2 ]; then
  echo "$num1 is equal to $num2"
else
  echo "$num1 is not equal to $num2"
fi

if [ $num1 -gt $num2 ]; then
  echo "$num1 is greater than $num2"
fi

# 3. Boolean Operators
if [[ $num1 -gt 0 && $num2 -gt 0 ]]; then
  echo "Both numbers are positive. (AND operator)"
fi

if [[ $num1 -gt 20 || $num2 -lt 10 ]]; then
  echo "Either num1 is greater than 20 or num2 is less than 10. (OR operator)"
fi

if ! [[ $num1 -lt 0 ]]; then
  echo "$num1 is not a negative number. (NOT operator)"
fi

# 4. String Operators
str1="Hello"
str2="World"

if [ "$str1" = "$str2" ]; then
  echo "Strings are equal."
else
  echo "Strings are not equal."
fi

if [ -n "$str1" ]; then
  echo "String str1 is not empty."
fi

if [ -z "$str3" ]; then
  echo "String str3 is empty or not set."
fi

# 5. File Test Operators
file="testfile.txt"
touch $file  # Create an empty file for testing

echo "File Test Operations:"
if [ -e $file ]; then
  echo "$file exists."
fi

if [ -w $file ]; then
  echo "$file is writable."
fi

if [ -r $file ]; then
  echo "$file is readable."
fi

if [ -s $file ]; then
  echo "$file is not empty."
else
  echo "$file is empty."
fi

rm $file  # Clean up created file

echo "Shell Basic Operators demonstration completed."
