#!/bin/bash
a=1 # Assign 1 to variable a.
while [[ $a -le 1000 ]] # While a less 1000.
do # prints the a.
echo "$a" # Prints a.
let a=a+3 # Incriments the a with 3.
done # Finishes the while.