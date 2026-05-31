#!/bin/bash

# How it works:
#---------------
#   Start with a=0 and b=1.
#   Print a.
#   Calculate the next term as a+b.
#   Update a and b.
#    Repeat until N terms are printed.

n=$1

a=0
b=1

echo "Fibonacci Series up to $n terms:"

for (( i=1; i<=n; i++ ))
do
    echo -n "$a "

    temp=$((a + b))
    a=$b
    b=$temp
done

echo


# chmod +x fibonacci.sh - excute permission for the script

# ./fibonacci.sh 7 - to run the script with 7 terms in the Fibonacci series

#output 
#-------
#Fibonacci Series up to 7 terms:
0 1 1 2 3 5 8