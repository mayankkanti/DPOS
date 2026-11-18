#!/bin/bash
# Q5: Gross salary calculation
echo "Enter basic salary:"
read basic

# bc prints 1 if the comparison is true, 0 if false
if (( $(echo "$basic < 1500" | bc) )); then
    hra=$(echo "scale=2; $basic * 10 / 100" | bc -l)
    da=$(echo "scale=2; $basic * 90 / 100" | bc -l)
else
    hra=500
    da=$(echo "scale=2; $basic * 98 / 100" | bc -l)
fi

gross=$(echo "scale=2; $basic + $hra + $da" | bc -l)
echo "HRA   = $hra"
echo "DA    = $da"
echo "Gross = $gross"
