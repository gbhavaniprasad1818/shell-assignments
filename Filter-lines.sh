#!/bin/bash

input_file=$1
output_file="error_lines.txt"

# Check if file exists
if [ ! -f "$input_file" ]
then
    echo "Error: File not found."
    exit 1
fi

# Add header to output file
echo "===== ERROR LINES REPORT =====" > "$output_file"

# Read file line by line
while IFS= read -r line
do
    if [[ "$line" == *ERROR* ]]
    then
        echo "$line" >> "$output_file"
    fi
done < "$input_file"

echo "Filtered ERROR lines saved to $output_file"
