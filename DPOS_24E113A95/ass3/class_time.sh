#!/bin/bash
# Q10: DOS class time for a given day
# NOTE: Edit the times and rooms below to match your timetable.
echo "Enter a day (e.g. Monday):"
read day

# convert to lower case so "Monday", "monday" both work
day=$(echo "$day" | tr 'A-Z' 'a-z')

case $day in
    monday)    echo "DOS class: 10:00 AM - 11:00 AM, Room 101" ;;
    tuesday)   echo "No class on Tuesday" ;;
    wednesday) echo "DOS class: 11:00 AM - 12:00 PM, Room 102" ;;
    thursday)  echo "No class on Thursday" ;;
    friday)    echo "DOS class: 09:00 AM - 10:00 AM, Room 101" ;;
    saturday)  echo "No class on Saturday" ;;
    sunday)    echo "Holiday" ;;
    *)         echo "Invalid day" ;;
esac
