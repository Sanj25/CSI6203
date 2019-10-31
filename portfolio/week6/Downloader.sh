getURL()
{
    read -p " ENter website to download: " weblink # Downloads website.
    read -p "Enter loction to save file: " saveFile # Save the file in location provided by user.
    wget -P $saveFile $weblink
}
getURL