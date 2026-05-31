#!/bin/bash

# USED TO FILTER LINES "ERRORS" IN A LARGER LOG FILE AND SAVE THEM TO A NEW FILE.

input_file=$1
output_file="error_lines.txt"

echo "===== ERROR LINES REPORT =====" > "$output_file"
grep "ERROR" "$input_file" >> "$output_file"

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
