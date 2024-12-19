#!/bin/bash

# Check if less than 3 arguments are provided
if [ $# -ne 3 ]; then
  echo "Error: Missing arguments. Provide 3 arguments."
  exit 1
  if [ -d "$folder_name" ]; then
  echo "Folder '$folder_name' already exists."

fi

# Assign arguments to variables
folder_name=$1
file_name="$2.txt"
file_content=$3

# Create the sub-folder and the file, then write the content into the file
mkdir -p "$folder_name" && echo "$file_content" > "$folder_name/$file_name"

# Change the file permission to readonly for others
chmod o-w "$folder_name/$file_name"

echo "Sub-folder '$folder_name' created with file '$file_name' and content written."
