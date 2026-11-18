#!/bin/bash
# Q1: Integer arithmetic on two numbers
echo "Enter first number:"
read a
echo "Enter second number:"
read b

echo "Sum        = $((a + b))"
echo "Difference = $((a - b))"
echo "Product    = $((a * b))"
if [ $b -ne 0 ]; then
    echo "Quotient   = $((a / b))"
    echo "Remainder  = $((a % b))"
else
    echo "Cannot divide by zero"
fi
