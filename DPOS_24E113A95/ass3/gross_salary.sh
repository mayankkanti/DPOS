#!/bin/bash
# Q5: Gross salary calculation
echo "Enter basic salary:"
read basic

if [ $(echo "$basic < 1500" | bc) -eq 1 ]; then
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
