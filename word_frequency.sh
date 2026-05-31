#!/bin/bash

file=$1

if [ ! -f "$file" ]
then
    echo "File not found!"
    exit 1
fi

cat "$file" \
| tr '[:upper:]' '[:lower:]' \
| tr -cs '[:alnum:]' '\n' \
| sort \
| uniq -c \
| sort -rn \
| head -5


# chmod +x word_frequency.sh - excute permission for the script

# ./word_frequency.sh filename.txt - replace filename with the your filename


# output
#-------
#    12 2
#     4 1
#     3 52
#     3 4
#     3 12

