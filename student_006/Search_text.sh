#!/bin/bash

# Check if fewer than 3 arguments are provided
if [ $# -ne 3 ]; then
  echo "USAGE: ./search_text.sh path file text"
  exit 0
fi

# Check if the specified file exists in the given directory
if [ ! -f "$search_path/$file_name" ]; then
  # If the file doesn't exist, display an error message and exit with status 1
  echo "Error: File '$file_name' does not exist in directory '$search_path'."
  exit 1
fi

# Assign arguments to variables
search_path=$1
file_name=$2
search_text=$3

# Search for the text in the file
if grep -q "$search_text" "$search_path/$file_name"; then
  echo "Text found in '$file_name'."
else
  echo "Text not found in '$file_name'."
fi
