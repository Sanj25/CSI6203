#!/bin/bash
# Specify the path of the secret.txt file
secrettxtfile=/home/student/CSI6203/Scratch/secret.txt
# with condition check if file is not a directory and is regular file.
if test -f "$secrettxtfile"; then 
echo " secret.txt file exists and contents are :" # Display the output message.
cat  $secrettxtfile # Display the content of the file.
else # if the above condition is false then this part executes.
echo "This is a different File" # Displays a output message. 
fi # finishes the if statement.
