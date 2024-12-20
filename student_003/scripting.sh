#!/bin/bash

# check for three arguments
if [$# -lt 3]; then
    echo "Error: You must provide exactly 3 arguments."
    exit 1

fi


# One: get the arguments
sub-folder name= $1st-argument
file-name= $2nd-argument
text= $3rd-argument

#Two: create the folder
mkdir "$1st-argument"

#Three: create file with text content
echo "$3rd-argument" > "$1st-argument/$2nd-argument.txt"

#Four: set to readonly for viewers
chmod o=r "$1st-argument/$2nd-argument.txt"

echo "Created $1st-argument/$2nd-argument.txt with the content: '$3rd-argument'"
