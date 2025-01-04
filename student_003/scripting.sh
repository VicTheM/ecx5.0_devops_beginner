#!/bin/bash

# Check if the number of arguments is less than 3
if [ "$#" -ne 3 ]; then
    echo "Error: You must provide exactly 3 arguments."
    exit 1
fi

# One: get the arguments
subfolder_name=$1
file_name=$2
text=$3

# Two: create the folder
mkdir -p "$subfolder_name"

# Three: create file with text content
echo "$text" > "$subfolder_name/$file_name.txt"

# Four: set the file to read-only for others
chmod o=r "$subfolder_name/$file_name.txt"

echo "Created $subfolder_name/$file_name.txt with the content: '$text'"

