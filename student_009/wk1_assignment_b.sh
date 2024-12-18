#!/bin/bash

#sorting the files one at a time and in alphabetical order
files=$(ls -1 | sort)

counter=1

for i in $files;
do
    echo "[$counter] $i"
    counter=$((counter+1))
done

