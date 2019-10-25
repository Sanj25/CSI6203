#!/bin/bash
printError(){
    echo -e "\033[31mERROR:\033[0m $1"
}

getNumber(){
    read -p "$1: "
    while (( $REPLY < $2 || $REPLY > $3 )); do
        printError "Input must be between $2 and $3"
        read -p "$1: "
    done
}

chkNumber(){
    [ $REPLY -gt 42 ] && echo "Too High!" 
    [ $REPLY -lt 42 ] && echo "Too low!"   
}

getNumber "Enter a number between 1 and 100: " 1 100

[ $REPLY -eq 42 ] && echo "Correct!"



while [ $REPLY -ne 42 ]
do
    chkNumber 
    getNumber "Enter a number between 1 and 100: " 1 100
    [ $REPLY -eq 42 ] && echo "Correct!"
done