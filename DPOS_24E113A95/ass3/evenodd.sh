#!/bin/bash
# Q4: Split numbers from a file into even_numbers and odd_numbers
# Usage: ./evenodd.sh filename
if [ ! -f "$1" ]; then
    echo "Usage: $0 filename"
    exit 1
fi

# start with empty output files
> even_numbers
> odd_numbers

for n in $(cat "$1")
do
    if [ $((n % 2)) -eq 0 ]; then
        echo $n >> even_numbers
    else
        echo $n >> odd_numbers
    fi
done

echo "Even numbers:"
cat even_numbers
echo "Odd numbers:"
cat odd_numbers
