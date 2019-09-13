#!/bin/bash
Black='\033[30m' #  Specify Colour Codes that called in script.
Green='\033[32m'
Brown='\033[33m'
Blue='\033[34m'
Purple='\033[35m'
Cyan='\033[36m'
Grey='\033[37m'
Red='\033[31m'
Clear='\033[37m'


if [ "$2" == "+" ]; then # Checks if second argument is +.
    let sum=$1+$3 # Perform Arithmetic Operation.
    echo -e "${Blue} $sum ${Clear}" # Output result in Blue colour.
elif [ "$2" == "-" ]; then # Checks if second argument is -.
    let sum=$1-$3 # Perform Arithmetic Operation.
    echo -e "${Green} $sum ${Clear}" # Output result in Green Colour.
elif [ "$2" == "*" ]; then #Checks if second argument is *.
     let sum=$1\*$3 # Perform Arithmetic Operation and saves result.
     echo -e "${Red} $sum ${Clear}" #Output Result in Red Colour.
elif [ "$2" == "/" ]; then # Checks if second argument is /.
     let sum=$1/$3 # Perform Arithmetic operation and saves resut.
     echo -e "${Purple} $sum ${Clear}"
else # when above conditions fails this part executes.
     echo "Please choose operators add sub mul div only"
fi        # Finishes if statement.
exit 0 # Exit from the script.
