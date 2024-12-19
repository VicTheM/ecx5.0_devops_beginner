#!/bin/bash

# Check if less than 3 arguments are provided
if [ $# -lt 3 ]; then
  echo "USAGE: ./script_name.sh <directory_path> <file_name> <search_text>"
  exit 0
fi

# Assign arguments to variables for better readability
directory_path=$1
file_name=$2
search_text=$3

# Check if the directory exists
if [ ! -d "$directory_path" ]; then
  echo "Error: Directory '$directory_path' does not exist."
  exit 1
fi

# Check if the file exists in the directory
if [ ! -f "$directory_path/$file_name" ]; then
  echo "Error: File '$file_name' not found in directory '$directory_path'."
  exit 1
fi

# Search for the text in the file
grep "$search_text" "$directory_path/$file_name"

# Check the result of grep
if [ $? -eq 0 ]; then
  echo "Search complete: '$search_text' found in '$file_name'."
else
  echo "Search complete: '$search_text' not found in '$file_name'."
fi

