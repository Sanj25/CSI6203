#!/bin/bash

awk '{
    printf "\033[1;32m"
    printf "\n" $2 " " $1  " - " $3
    printf "\033[0m"
    printf "\n" $5 "\n\t"
    for(i=6;i<=NF;i++)
    {
        printf "%s", $i
    }

}' /var/log/auth.log