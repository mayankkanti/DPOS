#!/bin/bash
# Q6: Leap year check. Uses current year if no argument is given.
# Usage: ./leap_year.sh [year]
if [ $# -eq 0 ]; then
    year=$(date +%Y)
else
    year=$1
fi

if [ $((year % 400)) -eq 0 ] || [ $((year % 4)) -eq 0 -a $((year % 100)) -ne 0 ]; then
    echo "$year is a leap year"
else
    echo "$year is not a leap year"
fi
