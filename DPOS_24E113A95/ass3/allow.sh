#!/bin/bash
# Q7: Semester eligibility check
echo "Enter internal mark:"
read mark
echo "Enter attendance percentage:"
read att

if (( mark >= 20 && att >= 75 )); then
    echo "Allowed for Semester"
else
    echo "Not allowed"
fi
