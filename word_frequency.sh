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

# ./word_frequency.sh filename.txt - to run the script with a text file to find the top 5 most frequent words

# output
#-------
