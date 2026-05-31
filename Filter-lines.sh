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


# chmod +x Filter-lines.sh --> Give Execute Permission

#create a log file named Filter-lines-app.log and add some lines with and without the word "ERROR" to test the script
# INFO Application started
# ERROR Database connection failed
# INFO User logged in
# ERROR Invalid credentials
# WARNING Disk usage high
# ERROR Timeout occurred

# ./Filter-lines.sh Filter-lines-app.log

# all error lines from the log file will be saved to error_lines.txt with a header

# Output File (error_lines.txt)
 # ==== ERROR LINES REPORT =====
 # ERROR Database connection failed
 # ERROR Invalid credentials
 # ERROR Timeout occurred
