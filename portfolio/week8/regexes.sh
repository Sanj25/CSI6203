#!/bin/bash
cd ~/CSI6203/
echo "----------------------------------------"
echo "Grep sed in working directory"
echo "----------------------------------------"
grep -r sed
echo "----------------------------------------"
echo "Grep lines starting from m"
echo "----------------------------------------"
grep -r "^m"
echo "----------------------------------------"
echo "Grep all lines containing three digits in working directory"
echo "----------------------------------------"
grep -r -E "[[:digit:]]{3}"
echo "----------------------------------------"
echo "Grep all lines starting with vowel in working directory"
echo "----------------------------------------"
grep -r "^[aeiou]"
echo "----------------------------------------"
echo "Grep all lines having loop in working directory"
echo "----------------------------------------"
grep -r -w -E 'for | while'
echo "----------------------------------------"
echo "Grep all lines having 3 words after echo in working directory"
echo "----------------------------------------"
grep -r -P '^echo.*\w+\s+\w+\s+\w+'
echo "----------------------------------------"