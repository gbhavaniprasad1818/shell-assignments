#!/bin/bash

path=$1

if [ -e "$path" ]
then
    echo "$path exists."

    if [ -f "$path" ]
    then
        echo "Type: File"

        [ -r "$path" ] && echo "Readable: Yes" || echo "Readable: No"
        [ -w "$path" ] && echo "Writable: Yes" || echo "Writable: No"
        [ -x "$path" ] && echo "Executable: Yes" || echo "Executable: No"

    elif [ -d "$path" ]
    then
        echo "Type: Directory"
        echo "Files inside $path:"
        ls -l "$path"
    fi

else
    echo "$path does not exist."
fi

chmod +x file_check.sh 



# ./file_check.sh fielname.txt --> replace filename with the name of the file you want to check

#./file-checksh directoryname  --> replace directoryname with the name of the directory you want to check

#output:

# $ sh file-check.sh exampletext.txt

# exampletext.txt exists.
# Type: File
# Readable: Yes
# Writable: Yes
# Executable: No



#$ sh file-check.sh example --> example is a directory

#example exists.
#Type: Directory
#Files inside example:
#total 0
#-rw-r--r-- 1 BHAVANI PRASAD 197121 0 Jan  1  2022 example.txt
#-rw-r--r-- 1 BHAVANI PRASAD 197121 0 Jan  1  2022 example2.txt
#-rw-r--r-- 1 BHAVANI PRASAD 197121 0 Jan  1  2022 example3.txt
#chmod: cannot access 'file_check.sh': No such file or directory


