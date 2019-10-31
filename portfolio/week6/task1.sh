#!/bin/bash 
var1=$1
printError()
{
    echo -e "\033[31mError:\033[0m " $var1
}
printError
