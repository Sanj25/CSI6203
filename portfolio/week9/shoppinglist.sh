#!/bin/bash


awk 'BEGIN{
    FS=","
    printf "\033[1;32m"
    printf "%12s %12s %12s %12s %12s", "Item",  "|", "Quantity", "|", "Price" 
    printf "\n....................................................................."
    printf "\033[0m"
}
{
    printf "\n%12s %12s %12s %12s %12s", $1, "|", $2, "|", $3
}' shopping.csv