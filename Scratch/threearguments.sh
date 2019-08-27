#!/bin/bash
echo "Enter three arguments" $1 $2 $3
if [ $# -gt 3 ]; then
echo " Please Enter only three arguments " exit 1
else
echo "the no of arguments are" $#
fi
