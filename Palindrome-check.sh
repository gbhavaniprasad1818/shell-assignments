#!/bin/bash

input=$1
reverse=$(echo "$input" | rev)

if [ "$input" = "$reverse" ]
then
    echo "$input -> Palindrome"
else
    echo "$input -> Not a Palindrome"
fi

