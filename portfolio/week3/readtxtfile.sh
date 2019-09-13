#!/bin/bash
# Specify the path of the secret.txt file
read -p " Enter the file name " secrettxtfile
# with condition check if file is not a directory and is regular file.
if [ -f "$secrettxtfile" ]; then 
echo " secret.txt file exists and contents are :" # Display the output message.
cat $secrettxtfile # Display the content of the file.
else # if the above condition is false then this part executes.
echo "This is a different File" # Displays a output message. 
fi # finishes the if statement.
