#!/bin/bash

# How it works:

#   $1 stores the first number as the initial largest value.
#  "$@" represents all command-line arguments.
#   The for loop compares each number with the current largest number.
#   If a larger number is found, largest is updated.
#    Finally, the script prints the largest number.

largest=$1

for num in "$@"
do
    if [ "$num" -gt "$largest" ]
    then
        largest=$num
    fi
done

echo "Largest number: $largest"

# chmod +x largest-number.sh   --> excute permission for the script

#  ./ largest-number.sh 3 5 2 8 1   --> to run the script with a list of numbers

#output
#-------
#Largest number: 8

