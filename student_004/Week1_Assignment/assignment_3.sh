#!/bin/bash
#checking for correct number of arguments
if [ $# -lt 3 ];
then
    echo "USAGE: .filepath filename text"
    exit 0
fi

#assigning arguments
directory_path=$1
file_name=$2
text=$3

##checking if directory exists
if [ ! -d "$directory_path" ];
then
    echo "Error! The directory $directory_path does not exist."
    exit 1
fi

#checking if file exists
if [ ! -f "$directory_path/$file_name" ];
then
    echo "Error! The file $file_name does not exist in the directory $directory_path."
    exit 1
fi

#searching for the text
grep "$text" "$directory_path/$file_name"

if [ $? -eq 0 ];
then
    echo "$text was found in the file $file_name"
else
    echo "$text was not found in the file $file_name"
fi
