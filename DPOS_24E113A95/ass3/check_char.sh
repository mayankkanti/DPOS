#!/bin/bash
# Q9: Identify the type of character entered
echo "Enter a character:"
read ch

if (( ${#ch} != 1 )); then
    echo "You entered more than one character"
else
    case $ch in
        [a-z]) echo "You entered a lower case alphabet" ;;
        [A-Z]) echo "You entered an upper case alphabet" ;;
        [0-9]) echo "You have entered a digit" ;;
        *)     echo "You have entered a special symbol" ;;
    esac
fi
