#!/bin/bash

# Check if the number of arguments is less than 3
if [ "$#" -lt 3 ]; then
    echo "USAGE: ./filename path file text"
    exit 0

fi


# Receive the arguments
path = $1
file = $2
text = $3

# Check if the specified file exists in the given directory
if [ ! -f "$path/$file" ]; then
    echo "Error: File $file not found in the specified path $path"
    exit 1
fi

# Search for the text in the file
grep -q "$text" "$path/$file"

# Check the result of the search
if [$? -eq 0 ]; then
    echo "Text found."
else
    echo"Text not found."

fi
