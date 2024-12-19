#!/bin/bash

#sorting the files and listing in alphabetical order
files=$(ls -1 | sort)

adder=1

for a in $files;
do
    echo "[$adder] $a"
    adder=$((adder+1))
done
