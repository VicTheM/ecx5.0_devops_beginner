#!/bin/bash

# Check if 3 arguments are passed
if [ $# -lt 3 ]; then
    echo "Error: Use three arguments."
    exit 1
fi

# Assign arguments to variables
folder_name=$1
file_name=$2
text=$3

#create a folder
mkdir "$folder_name"
if [ $? -ne 0 ]; then
    echo "Error: Failed to create $folder_name folder."
    exit 1
fi
echo " $folder_name folder created successfully."

# Create a file in the folder
touch "$folder_name/$file_name.txt"

if [ $? -ne 0 ];  then
    echo " Error: Failed to create $file_name file."
       exit 1
fi
echo "$file_name file created successfully"

#write to the file 
echo "$text" > "$folder_name/$file_name"

if [ $? -ne 0 ];  then
    echo " Error: Failed to write $text in the $file_name file."
       exit 1
fi
echo "Task completed"

#change permission for others to read only 
 chmod o=r "$file_name"
if [ $? -ne 0 ];  then
    echo " Error: Failed to change $file_name file permission"
       exit 1
fi
echo "$file_name file permission changed to read-only for others"

echo "The script is complete."




 


