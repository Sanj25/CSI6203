#!/bin/bash
echo "Your shopping list is as follows:"
awk 'BEGIN {
FS=","
}
/^[aeiou]/ {
print "starts with a vowel: " $1
}' ../week9/shopping.csv

awk 'begin { FS="," } /^o/{ print "Words with O: " $1}' ../week9/shopping.csv

awk -v COUNT=$1 'NF>COUNT' ../week9/shopping.csv

#awk 'begin { FS="," } /.*/\/{ print $1 }' ../week9/shopping.csv
