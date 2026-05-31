#!/bin/bash

input=$1
reverse=""

len=${#input}

for (( i=len-1; i>=0; i-- ))
do
    reverse="$reverse${input:$i:1}"
done

if [ "$input" = "$reverse" ]
then
    echo "$input -> Palindrome"
else
    echo "$input -> Not a Palindrome"
fi

# chmod +x palindrome.sh --> excute permission for the script


#input: 
#-----

# ./palindrome.sh "madam"
# ./palindrome.sh "12321"
# ./palindrome.sh "hello


#output
#-------

# madam -> Palindrome
# 12321 -> Palindrome
# hello -> Not a Palindrome