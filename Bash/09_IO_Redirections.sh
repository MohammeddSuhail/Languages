#!/bin/sh

# Output Redirection
echo "Moh" > user.txt       # redirected to file
echo "Suhail" >> user.txt   # appended to file

# Input Redirection
1.
wc -l < user.txt

2.
command << delimiter
document
delimiter

# Ex:
wc -l << EOF
   This is a simple lookup program 
	for good (and bad) restaurants
	in Cape Town.
EOF