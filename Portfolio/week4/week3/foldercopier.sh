#!/bin/bash
IsFolderNameValid() 
{
read -p "Enter the foldername you want to copy" folderName 
if [ -d "$folderName" ]; then
   read -p "type the name of the destination folder: " newFolderName
   cp -r "$folderName" "$newFolderName"
else
    echo "I couldn't find that folder" "$folderName"
    exit 1
fi
}
CopyNewFolderName() {
    read -p "Type the name fo the folder you would like to copy: " folderName
}
IsFolderNameValid
CopyNewFolderName
tree
echo 'Done'
exit 0