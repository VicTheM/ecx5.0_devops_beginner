#!/bin/bash
if [ $# -lt 3 ];
 then 
 echo "Kindly provide 3 arguments"
 exit 1
fi
args=("$@")

mkdir "${args[0]}" # Create a sub folder named argument 1
touch "${args[0]}/${args[1]}.txt" # create a .txt file named argument 2 in the sub folder
echo "${args[3]}" >> "${args[0]}/${args[1]}.txt" # write argument 3 as text in the .txt file created
chmod o=r "${args[0]}/${args[1]}.txt"

echo "The programme has been executed successfully!" 
