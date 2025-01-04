#!/bin/bash

# Get the list of files in the current directory
files=$(ls -p | grep -v /)

# Counter to number the files
Counter=1

# Loop through files and print in the desired format
for file in $files; do
    echo "[$Counter] $file"
    Counter=$((Counter + 1))
done

