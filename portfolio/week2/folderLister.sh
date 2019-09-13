#!/bin/bash 
# Shebang instructs the interpreter to execute the sript.
read -p " Please type the name of the folder you want list contents :" foldername # Prompts the user to enter folder name and reads user input.
# Make a directory with the name inputted by user.
ls -la "$foldername" # list all the contents of that folder.

