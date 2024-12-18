#!/bin/bash

#checking for correct number of arguments
if [ $# -lt 3 ];
then
    echo "USAGE: .filename path file text"
    exit 0
fi

#assigning arguments
directory_path=$1
file=$2
text=$3

##checking if directory exists
if [[ ! -d "$path" ]];
then
    echo "Error! The directory $directory_path does not exist."
    exit 1
fi

#checking if file exists
if [[ ! -f "$path/$file" ]]
then
    echo "Error! The file $file does not exist in the directory $directory_path."
    exit 1
fi

#searching for the text
grep "$text" "$path/$file"

if [[ $? -eq 0 ]];
then
    echo "$text was found in the file $file."
else
    echo "$text was not found in the file $file."
fi

