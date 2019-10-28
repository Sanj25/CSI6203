#!/bin/bash

awk 'BEGIN{
    FS=","
    printf "\033[1;32m"
    printf "%12s %12s %10s %10s %10s %10s %10s %10s %10s", "Item",  "|", "Quantity", "|", "Price", "|", "Total", "|", "Comments"
    printf "\n..................................................................................................................."
    printf "\033[0m"
}
{
    printf "\n%12s %12s %10s %10s %10s %10s %10s %10s", $1, "|", $2, "|", $3, "|", $2*$3, "|" 
            { 
                if ($2 > 5)
                    print "Do you really need that many?"
                else if ($2*$3 > 5) 
                    print "Thats bit expensive! Are you sure?" 
                else if ($2*$3 < 3)
                    print "Such a cheapstake!"
            }
            
}
{Quantity +=$2;TotalPrice +=$3;SumofTotalCol += $2*$3} END {printf "\n \033[1;32m...................................................................................................................\n%12s %12s %10s %10s %10s %10s %10s", "Total", "|", Quantity, "|", TotalPrice, "|", SumofTotalCol, "\033[0m"}
' ../week9/shopping.csv