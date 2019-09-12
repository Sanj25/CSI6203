#!/bin/bash #Shebang instructs the interpreter to execute the script.
CHKFolderNameValid() 
{
read -p "Enter the foldername you want to copy" folderName # Prompts the user for folder name and reads user input.
if [ -d "$folderName" ]; then #It checks if file is directory.
   read -p "type the name of the destination folder: " newFolderName # Reads the name of Destination Folder.
   cp -r "$folderName" "$newFolderName" #Copy new folder to Destination folder.
else # When the above condition is false then this part executes.
    echo "I couldn't find that folder" "$folderName" # Prints the output message with folder name.
    exit 1 # exits from the else part.
fi
}
CopyNewFolderName() {
    read -p "Type the name fo the folder you would like to copy: " folderName
} # Read the user input.
CHKFolderNameValid
CopyNewFolderName
tree # Display all the paths, Directories and files in Directories.
echo 'Done' # Display the output message.
exit 0 # Exits from the script.