#!/bin/bash

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