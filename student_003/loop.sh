#!/bin/bash

# Get the list of files in current dirctory
files= $(ls -p | grep -v /)

# Counter to number the files
Counter= 1

# Loop through files and print in desired format
for file in $(echo "$files" | sort); do
    echo "[$Counter] $file"
    Counter= $((Counter + 1))
done
