#!/bin/bash

length=$1

chars='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_+-=[]{}|;:,.<>?'

password=""

for ((i=1; i<=length; i++))
do
    random_index=$((RANDOM % ${#chars}))
    password="${password}${chars:$random_index:1}"
done

echo "Generated Password: $password"

# chmod +x password_generator.sh - excute permission for the script

# ./password_generator.sh 12 --> 12 IS THE LENGTH OF THE PASSWORD TO BE GENERATED

#OUTPUT
#Generated Password: aB3$eFgH1@2

# ./password_generator.sh 5 --> 5 IS THE LENGTH OF THE PASSWORD TO BE GENERATED

# OUTPUT
# Generated Password: 9@aB1