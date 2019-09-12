#!/bin/bash
#  Prompt the user for input and reads the user input
read -p "Type Folder Name you would like to create:" folderName
# Make the directory as the name input given by user
mkdir "$folderName"
# Moves the file to the week2 folder.
mv /home/student/CSI6203/foldermaker.sh /home/student/CSI6203/Portfolio/week2/

