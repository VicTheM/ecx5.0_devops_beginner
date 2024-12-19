#!/bin/bash

# Check if less than 3 arguments are provided
if [ $# -lt 3 ]; then
    echo "“USAGE: ./filename path file text"
    exit 0
fi

#Assign arguments to variables
path=$1
file=$2
text=$3

# Check if the specified directory exists
if [ ! -d "$path" ]; then
    echo "Error: Directory '$path' does not exist."
    exit 1
fi

filepath="$path/$file"

# Check if the specified file exists
if [ ! -f "$filepath" ]; then
    echo "Error: File '$filepath' does not exist."
    exit 1
fi

# Search for the specified text in the file
grep -q "$text" "$filepath"

# Check the result of the grep command
if [ $? -eq 0 ]; then
    echo "Text '$text' found in file '$filepath'."
else
    echo "Text '$text' not found in file '$filepath'."
fi
