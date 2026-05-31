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



# ./file_check.sh /path/to/file_or_directory - replace /path/to/file_or_directory with the actual path you want to check