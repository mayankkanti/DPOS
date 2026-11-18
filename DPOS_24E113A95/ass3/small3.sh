#!/bin/bash
# Q8: Smallest of three numbers given as command line arguments
# Usage: ./small3.sh num1 num2 num3
if (( $# != 3 )); then
    echo "Usage: $0 num1 num2 num3"
    exit 1
fi

small=$1
if (( $2 < small )); then
    small=$2
fi
if (( $3 < small )); then
    small=$3
fi
echo "Smallest number is $small"
