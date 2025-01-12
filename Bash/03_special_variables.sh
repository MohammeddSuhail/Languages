#!/bin/sh

# Special Variables: https://www.tutorialspoint.com/unix/unix-special-variables.htm 

echo "File Name: $0"
echo "First Parameter : $1"
echo "Second Parameter : $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters : $#"