#!/bin/bash
# Q12: Calculator using command line arguments
# Usage: ./calculator.sh op1 operator op2
# Operators: + - x / % ^
if (( $# != 3 )); then
    echo "Invalid input"
    echo "Enter input in following format: op1 operator op2"
    exit 1
fi

op1=$1
op=$2
op2=$3

case $op in
    +) result=$((op1 + op2)) ;;
    -) result=$((op1 - op2)) ;;
    x) result=$((op1 * op2)) ;;
    /) result=$((op1 / op2)) ;;
    %) result=$((op1 % op2)) ;;
    ^) result=$((op1 ** op2)) ;;
    *)
        echo "Invalid input"
        echo "Enter input in following format: op1 operator op2"
        exit 1
        ;;
esac

echo "$op1 $op $op2 = $result"
