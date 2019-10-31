#!/bin/bash
echo "Your shoppoing list is :"
awk 'BEGIN {
    FS=","
}
/^[aeiou]/ {
    print "starts with vowel: "$1
}' ../week9/shopping.csv

awk 'begin { FS="" } /^o/{ print "Words with O: "$1}' ../week9/shopping.csv
awk -v COUNT=$1 'NF>COUNT' ../week9/shopping.csv