#!/bin/bash
ping -c1 8.8.8.8 # Check the connectivity status between source and destination.
if [ $? -eq 0 ]; then # Checks the if equal to zero.
echo " The internet seems to be connected"# Prints the output message.
read -p "please type a website URL to download: " URL #Read the input from user.
 if [ $URL == exit ]; then # if the input is exit.
 echo "exit" # Displays the output message.
 else # When if part is false then else part executes.
  wget -o- $URL # Downloads as the input by user.
 fi # Finishes the if statment.
else # this part executes if the above part is false.
echo " Error Internet not connected"# Prints the output message.
fi #Finishes the if statement.