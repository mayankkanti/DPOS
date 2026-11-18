#!/bin/bash
# Q11: Check whether two files have the same content
# Usage: ./filechk.sh file1 file2
if [ $# -ne 2 ]; then
    echo "Usage: $0 file1 file2"
    exit 1
fi

if cmp -s "$1" "$2"; then
    echo "Files $1 and $2 have same content"
    rm "$2"
    echo "So $2 is deleted"
else
    echo "Files $1 and $2 have different content"
fi
