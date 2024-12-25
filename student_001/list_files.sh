#!/bin/bash

# List all files in the current directory in alphabetical order
files=$(ls -1 | sort)

# Check if there are any files in the directory
if [ -z "$files" ]; then
  echo "No files found in the current directory."
  exit 0
fi

# Use a counter to number the files
counter=1
for file in $files; do
  echo "$counter) $file"
  ((counter++))
done
