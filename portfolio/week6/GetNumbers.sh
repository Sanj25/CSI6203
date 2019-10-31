#!/bin/bash
printError() # print error function.
{
    echo -e "\033[31mERROR:\033[0m $1"
}
getNumber() # getNumber function for getting the input.
{
    read -p "$1:"
    while (( $REPLY < $2 || $REPLY > $3 )); do
    printError "Input must be between $2 and $3"
    read -p "$1:"
    done
}
echo "this is the start of the script"
getNumber "Please type a number between 1 and 10" 1 10  # Called function and get number between 1 and 10.
echo "Thank you!"
getNumber "Please type a number between 50 and 100" 50 100 # called function  and number between 50 and 100.
echo "Thank you!"