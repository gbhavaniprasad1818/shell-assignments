#!/bin/bash

# How it works:
#---------------
#   $1 stores the number for which to calculate the factorial.
#   fact is initialized to 1.
#   The for loop multiplies fact by each number from 1 to num.
#    Finally, the script prints the factorial.

num=$1
fact=1

for (( i=1; i<=num; i++ ))
do
    fact=$((fact * i))
done

echo "Factorial of $num is $fact"



# chmod +x factorial.sh - excute permission for the script

# ./factorial.sh 5 - to run the script with a number to calculate its factorial

#output
#-------
#Factorial of 5 is 120