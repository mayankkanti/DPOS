#!/bin/bash
# Q3: Profit or loss from cost price and selling price
echo "Enter cost price:"
read cp
echo "Enter selling price:"
read sp

# bc prints 1 if the comparison is true, 0 if false
if (( $(echo "$sp > $cp" | bc) )); then
    echo "Profit of $(echo "$sp - $cp" | bc)"
elif (( $(echo "$sp < $cp" | bc) )); then
    echo "Loss of $(echo "$cp - $sp" | bc)"
else
    echo "No profit, no loss"
fi
