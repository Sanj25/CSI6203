#!/bin/bash


awk 'BEGIN{
    FS=","
    printf "\033[1;32m"
    printf "%12s %12s %10s %10s %10s %10s %10s", "Item",  "|", "Quantity", "|", "Price", "|", "Total" 
    printf "\n.........................................................................................."
    printf "\033[0m"
}
{
    printf "\n%12s %12s %10s %10s %10s %10s %10s", $1, "|", $2, "|", $3, "|", $2*$3
}
{Quantity +=$2;TotalPrice +=$3;SumofTotalCol += $2*$3} END {printf "\n \033[1;32m..........................................................................................\n%12s %12s %10s %10s %10s %10s %10s", "Total", "|", Quantity, "|", TotalPrice, "|", SumofTotalCol, "\033[0m"}
' shopping.csv