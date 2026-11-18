#!/bin/bash
# Q2: Floating point arithmetic on two numbers (uses bc)
echo "Enter first number:"
read a
echo "Enter second number:"
read b

echo "Sum        = $(echo "$a + $b" | bc -l)"
echo "Difference = $(echo "$a - $b" | bc -l)"
echo "Product    = $(echo "$a * $b" | bc -l)"
if [ $(echo "$b == 0" | bc) -eq 1 ]; then
    echo "Cannot divide by zero"
else
    echo "Quotient   = $(echo "scale=4; $a / $b" | bc -l)"
fi
