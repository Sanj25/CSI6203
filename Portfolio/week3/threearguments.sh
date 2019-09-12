#!/bin/bash # Shebang tells the interpreter to execute the script.
# Prompt the user to enter arguments.
echo "Enter three arguments" $#
# Condition to check if arguments are  not equal to three.
if [[ $# -ne 3 ]];then 
# if the arguments are greater then exit with exit status of 1.
echo " Please Enter only three arguments " exit 1
else # This part executes when if condition of does not met.
# Check if all the inputed arguments are files.
  if [[ -f $1 && -f $2 && -f $3 ]]; then
# Display the message if all are files.  
  echo "All are files"
# Check if $1 is newer than $2 and $3. 
    if [[ $1 -nt $2 && $1 -nt $3 ]]; then
    echo "$1 is the newest file"
# Check if $2 is newer than $1 and $3    
    elif [[ $2 -nt $1 && $2 -nt $3 ]]; then
    echo "$2 is the newest file"
    else
# From above comparison if two files are not new , means $3 is newest.    
    echo "$3 is the newest file"
    fi # Finishes the if statement.
  else # Else part executes when if part doesnot.
  echo "All arguments are not files" # Print the output message.
  fi # Finishes the if statement.
fi  # Finishes the if statment.

