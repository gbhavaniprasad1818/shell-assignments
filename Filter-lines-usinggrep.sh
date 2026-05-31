#!/bin/bash

input_file=$1
output_file="error_lines.txt"

echo "===== ERROR LINES REPORT =====" > "$output_file"
grep "ERROR" "$input_file" >> "$output_file"

echo "Filtered ERROR lines saved to $output_file"