#!/bin/bash

file=$1

# Check if filename is provided
if [ -z "$file" ]
then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Check if file exists
if [ ! -e "$file" ]
then
    echo "Error: File does not exist."
    exit 1
fi

# Check if it's a regular file
if [ ! -f "$file" ]
then
    echo "Error: Not a regular file."
    exit 1
fi

# Check read permission
if [ ! -r "$file" ]
then
    echo "Error: Permission denied."
    exit 1
fi

# Count lines, words, and characters
lines=$(wc -l < "$file")
words=$(wc -w < "$file")
chars=$(wc -m < "$file")

echo "File: $file"
echo "Lines      : $lines"
echo "Words      : $words"
echo "Characters : $chars"

# Check for empty file
if [ ! -s "$file" ]
then
    echo "Note: The file is empty."
fi


# chmod +x count-lines-words-chars.sh --> grant execute permission for the script

# ./count-lines-words-chars.sh filename.txt --> replace filename with the name of the file you want to analyze