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


# chmod +x count-lines-words-chars.sh --> Give Execute Permission

# ./count-lines-words-chars.sh filename.txt --> replace filename with the name of the file you want to analyze

#output
#-------
#File: exampletext.txt
#Lines      : 46
#Words      : 40
#Characters : 113

# Edge Cases

 # Non-existent File
 #-------------------

#./count-lines-words-chars.sh abc.txt
# output --> Error: File does not exist.

#Permission Denied
#.................

# chmod 000 sample.txt
#./count-lines-words-chars.sh sample.txt

# output --> Error: Permission denied.

#empty file
#---------

# touch empty.txt
# ./count-lines-words-chars.sh empty.txt

# output
#-------

#File: empty.txt
# Lines      : 0
# Words      : 0
# Characters : 0
# Note: The file is empty.


# One-Line Alternative
#If you only need the counts and don't need error handling:

# wc -lwm sample.txt   --> sample.txt will replace with your text file

# output

# 46 40 113 sample.txt

# where: 

#-l = lines
#-w = words
#-m = characters

