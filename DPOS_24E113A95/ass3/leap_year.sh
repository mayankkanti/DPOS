#!/bin/bash
# Q6: Leap year check. Uses current year if no argument is given.
# Usage: ./leap_year.sh [year]
if (( $# == 0 )); then
    year=$(date +%Y)
else
    year=$1
fi

if (( year % 400 == 0 || (year % 4 == 0 && year % 100 != 0) )); then
    echo "$year is a leap year"
else
    echo "$year is not a leap year"
fi
