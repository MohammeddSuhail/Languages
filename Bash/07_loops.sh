#!/bin/bash

# -> while loop
# -> for loop
# -> until loop
# -> select loop

# The while loop: Repeats as long as the condition is true
counter=1
echo "While loop demonstration:"
while [ $counter -le 5 ]; do
    echo "This is loop iteration #$counter"
    ((counter++))  # Increment the counter
done
echo "End of while loop"
echo ""

# The for loop: Iterates over a predefined range or list
echo "For loop demonstration:"
for i in {1..5}; do
    echo "This is loop iteration #$i"
done
echo "End of for loop"
echo ""

# The until loop: Repeats as long as the condition is false (opposite of while)
counter=1
echo "Until loop demonstration:"
until [ $counter -gt 5 ]; do
    echo "This is loop iteration #$counter"
    ((counter++))  # Increment the counter
done
echo "End of until loop"
echo ""

# The select loop: Provides a menu for the user to choose from
echo "Select loop demonstration:"
select choice in "Option 1" "Option 2" "Option 3" "Quit"; do
    case $choice in
        "Option 1")
            echo "You selected Option 1"
            ;;
        "Option 2")
            echo "You selected Option 2"
            ;;
        "Option 3")
            echo "You selected Option 3"
            ;;
        "Quit")
            echo "Exiting the select loop."
            break  # Exit the select loop
            ;;
        *)
            echo "Invalid option, please choose again."
            ;;
    esac
done
