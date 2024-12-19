#!/bin/bash

# Initialize a counter
counter=1

# iterate over files in the current directory, sorted alphabetically

for file in $(ls -1 | sort); do

    # Check if it's a regular file. 
    if [ -f "$file" ]; then
       
        echo "[$counter] $file"

        # Increment the counter
        counter=$((counter + 1))
    fi
done
