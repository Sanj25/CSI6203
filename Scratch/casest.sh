#!/bin/bash
if [ $# -lt 6 ]; then
exit
fi
case "$1" in
1) read -p " Type a folder Name you want to create :" foldername
mkdir $foldername
esac
exit 