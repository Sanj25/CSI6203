#!/bin/bash
getURL()
{
    read -p " Enter the name of website to download:" websiteLink
    read -p " Enter the location for save file:" saveFile
    wget -P $saveFile $websiteLink
    echo " Download a page with title:"
    sed -n -e 's!.*<title>\(.*\)</title>.*!\1!p' $saveFile/index.html
}
getURL