#!/bin/bash
# Prompt the user to type the foldername and reads user input.
read -p "Type the foldername you want to create:" foldername
# Create a folder/directory with foldername inputted by user.
mkdir "$foldername"
# Prompt user for password and reads user input.
read -s -p "Enter the secret Password: " mypassword
# Reads the secret key  Password and moves the secret.txt in newly created folder.
echo $mypassword > /home/student/CSI6203/Portfolio/week2/$foldername/secret.txt

