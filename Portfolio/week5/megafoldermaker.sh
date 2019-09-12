#!/bin/bash # Shebang instructs the interpreter to execute the script.
if (( $#!=2 )); then # Checks if the arguments are not equal to 2.
	echo "Error, provide two number" && exit 1 # Displays Error message and exits with exit 1 code.
fi # Finishes the if loop.

for ((i= $1; i<=$2; i++)) # Loop starts from argument 1 and runs upto argument 2 and increments with 1.
do # When the above loop runs it create the directories.
	echo "Creating directory number $i" # Create Directory 
	mkdir "week$i" # Make the directories.
done # finishes the loop.
