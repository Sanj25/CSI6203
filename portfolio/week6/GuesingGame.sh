#!/bin/bash
printError() # Print Error Function.
{
    echo -e "\033[31mERROR:\033[0m $1"
}
getNumber() # Function for getting number.
{
    read -p "$1:"
    while (( $REPLY < $2 || $REPLY > $3 )); do
    printError " Input must between $2 and $3"
    read -p "$1:"
    done
}
checknum() # Function for checking input number with 42.
{
    [ $REPLY -gt 42 ] && echo "TOO HIGH!"
    [ $REPLY -lt 42 ] && echo "TOO LOW!"
}
getNumber " Enter a number between 1 and 100:" 1 100 # Function getNumber called.
[ $REPLY -eq 42 ] && echo "Right!" # Check if input is equal to 42.
while [ $REPLY -ne 42 ] # Check until number not equal to 42.
do 
checknum
getNumber " Enter number between 1 and 100:" 1 100
[ $REPLY -eq 42 ] && "Correct!"
done



