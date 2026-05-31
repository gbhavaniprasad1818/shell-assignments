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

# chmod +x palindrome.sh 

# ./palindrome.sh "madam"

#rev: command not found

#which rev and rev --version --> to check if rev command is available in the system and its version

# Install rev on Amazon Linux / RHEL / CentOS:

# sudo dnf install util-linux -y

# chmod +x palindrome.sh

# ./palindrome.sh "madam"

#output
#-------

# madam -> Palindrome
# 12321 -> Palindrome
# hello -> Not a Palindrome