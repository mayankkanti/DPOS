#!/bin/bash
# Q3: Profit or loss from cost price and selling price
echo "Enter cost price:"
read cp
echo "Enter selling price:"
read sp

if [ $(echo "$sp > $cp" | bc) -eq 1 ]; then
    echo "Profit of $(echo "$sp - $cp" | bc)"
elif [ $(echo "$sp < $cp" | bc) -eq 1 ]; then
    echo "Loss of $(echo "$cp - $sp" | bc)"
else
    echo "No profit, no loss"
fi
