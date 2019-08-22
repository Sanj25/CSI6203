#!/bin/bash
# Prompt the user to type the foldername
read -p "Type the foldername:" foldername
# Create a folder/directory with "foldername"
mkdir "$foldername"
# Prompt user for password
read -s -p "Enter Password: " mypassword
# Password Entered stored in text file secret.txt
echo $mypassword > secret.txt
exit 
