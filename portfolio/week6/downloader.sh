#!/bin/bash

getURL()
{
    read -p "Enter website to download: " websiteLink
    read -p "Enter location to save file: " saveFile

    wget -P $saveFile $websiteLink
}

getURL