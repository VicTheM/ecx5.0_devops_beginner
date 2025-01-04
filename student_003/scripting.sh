#!/bin/bash

# Check for exactly 3 arguments
if [ "$#" -ne 3 ]; then
    echo "Error: You must provide exactly 3 arguments."
    echo "USAGE: ./script_name folder_name file_name text_content"
    exit 1
fi

# Receive arguments
sub_folder_name="$1"
file_name="$2"
text_content="$3"

# Define a safe directory outside the repo (e.g., user's home directory)
safe_directory="$HOME/safe_directory"

# Create the safe directory if it doesn't exist
mkdir -p "$safe_directory"

# Create the sub-folder within the safe directory
mkdir -p "$safe_directory/$sub_folder_name"

# Create the file with the text content
echo "$text_content" > "$safe_directory/$sub_folder_name/$file_name.txt"

# Set permissions to readonly for others
chmod o=r "$safe_directory/$sub_folder_name/$file_name.txt"

echo "File created at $safe_directory/$sub_folder_name/$file_name.txt with the content: '$text_content'"


