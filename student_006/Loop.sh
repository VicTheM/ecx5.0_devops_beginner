#!/bin/bash

# Initialize the counter
count=1

# List files in alphabetical order and number them
for file in $(ls -1 | sort); do
  echo "[$count] $file"
  count=$((count+1))
done
