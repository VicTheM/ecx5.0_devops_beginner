#check if the number of arguments is less than 3
if [ $# -lt 3 ] ; then
   echo "Not enough arguments. Please provide 3 arguments."
   exit 1
fi

#Assign arguments to variabes
Folder_Name=$1
File_Name=$2
File_content=$3

#create the sub-folder with the 1st argument
   mkdir "$Folder_Name" || { echo "Failed to create directory"; exit 1; }

#Create the fle with the 2nd argument name in the sub-folder.
   touch "$Folder_Name/$File_Name.txt" || { echo "Failed to create file"; exit 1; }

#Write the 3rd argument into the file
   echo "$File_content" > "$Folder_Name/$File_Name.txt"

#change the file permission to read-only for others
   chmod o=r "$Folder_Name/$File_Name.txt"

echo "Script executed successfully!"
