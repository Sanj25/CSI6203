#!/bin/bash
getURL()
{
    read -p "Enter website to download: " websiteLink
    read -p "Enter location to save file: " saveFile

    wget -P $saveFile $websiteLink
    
    #$saveFile/index.html

    echo "Downloaded a page with title: "
    sed -n -e 's!.*<title>\(.*\)</title>.*!\1!p' $saveFile/index.html
}

getURL

