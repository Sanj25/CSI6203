#!/bin/bash
# Specify the path of the secret.txt file
secrettxtfile=/home/student/CSI6203/Scratch/secret.txt
# with condition check 
if test -f "$secrettxtfile"; then
echo " secret.txt file exists and contents are :"
cat  $secrettxtfile
else
echo "This is a different File"
fi
