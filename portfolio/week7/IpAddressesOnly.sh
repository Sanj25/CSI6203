#!/bin/bash

details=$(bash ./IpInfo.sh)



while IFS= read -r line
do
    sed -n -e 's/^.*\(IP Address: \)/\1/p'
    if [[ $line == *"IP Address:"* ]]; then
        echo $line
    fi
done < <(printf '%s\n' "$details")