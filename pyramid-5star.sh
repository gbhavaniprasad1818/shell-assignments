#!/bin/bash

for ((i=1; i<=5; i++))
do
    printf "%*s" $((6-i)) ""
    printf "%*s" $((2*i-1)) "" | tr " " "*"
    echo
done

# chmod +x pyramid.sh - excute permission for the script

# ./pyramid.sh --> to run the script to print the pyramid pattern

#output
#-------

 #   *
 #  ***
 # *****
 # *******
 # *********