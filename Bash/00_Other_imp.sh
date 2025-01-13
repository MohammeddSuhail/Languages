#!/bin/sh

1. Storing the output of a shell command in a variable
current_date=$(date)
echo "Current date and time: $current_date"

Listing=`ls | grep Array`
echo "List operation: $Listing"



2. The exit command stops the script execution immediately, regardless of whether the exit status is 0 (success) or a non-zero value (failure).
exit 0 # Exit status 0 means success.
exit 1 # Any non-zero exit status means failure, but the specific number indicates the type or nature of the failure.



3. script calling another Script

a. if shell type is same
./01_read.sh

b. if shell type is different between caling script and called script, then
   specify the correct interpreter for the called script
<called_script_type> <script_name>
ex: sh/ksh script_name




4. Variable usage:
name="Suhail"
echo "Hello ${name}123"
=> Hello Suhail123
echo "Hello $name123"
=> Hello



