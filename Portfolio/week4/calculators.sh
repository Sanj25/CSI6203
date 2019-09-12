#!/bin/bash
Black='\033[30m'
Green='\033[32m'
Brown='\033[33m'
Blue='\033[34m'
Purple='\033[35m'
Cyan='\033[36m'
Grey='\033[37m'
Red='\033[31m'
Clear='\033[37m'


if [ "$2" == "+" ]; then
    let sum=$1+$3
    echo -e "${Blue} $sum ${Clear}"
elif [ "$2" == "-" ]; then
    let sum=$1-$3
    echo -e "${Green} $sum ${Clear}"
elif [ "$2" == "*" ]; then
     let sum=$1\*$3
     echo -e "${Red} $sum ${Clear}"
elif [ "$2" == "/" ]; then
     let sum=$1/$3
     echo -e "${Purple} $sum ${Clear}"
else
     echo "Please choose operators add sub mul div only"
fi        
exit 0
