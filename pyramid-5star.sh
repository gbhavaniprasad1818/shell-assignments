#!/bin/bash

for ((i=1; i<=5; i++))
do
    printf "%*s" $((6-i)) ""
    printf "%*s" $((2*i-1)) "" | tr " " "*"
    echo
done