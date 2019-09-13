#!/bin/bash
IFS=$'\n' # Goes through line by line.
for j in $(cat file.txt); do # loop takes j as a arguments.
    if [ -f "$j" ]; then # Checks if j is file.
        echo $j " That File Exists" # Prints the message that file exists.
    else # if the above part goes to false else part runs.
     if [ -d "$j" ]; then # Checks if it is a directory.
        echo $j "That's a Directory" # Prints the message is a directory.
     else # When the if part is false then else part executes.
        echo $j "I don't know what that is" # Print the output message.
     fi # Finishes the if statement.
    fi   # Finishes the second if statement. 
done # finishes the for loop.
