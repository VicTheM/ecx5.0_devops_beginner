#!/bin/bash

file_list=$(ls -f | sort)

i=1

for file in $file_list; do
	echo "[$i] $file"
	((i++))
done
