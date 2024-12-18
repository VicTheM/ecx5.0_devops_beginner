#!/bin/bash

#checking the number of arguments
if [ $# -lt 3 ];
then
    echo "You need to provide 3 aruments!"
    exit 1
fi

#creating the folder for first argument
mkdir "$1"

#creating the .txt file inside the folder
touch "$1/$2.txt"

#writing text into the file
echo "$3" > "$1/$2.txt"

#changing file permission for others
chmod o=r "$1/$2.txt"

echo "The script has been successfully executed!"

