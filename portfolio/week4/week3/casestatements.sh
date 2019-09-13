echo "1. Create a folder."
echo "2. List files in a folder."
echo "3. Copy a folder."
echo "4. Save a Password."
echo "5. Read a Password."
echo "6. Print Newest File."
echo " Please type any number 1 to 6 to proceed :"
read exp
case $exp in

  1) read -p "Type the foldername you want to create:" foldername
     mkdir "$foldername"
     ;;
  2) read -p "Enter the name of folder you want to list files:" foldername
     ls -la $foldername
     ;;
     
  3) read -p "type the name of the folder you like to copy: " folderName
     if [ -d "$folderName" ];then
     read -p "type the name of the destination folder: " newFolderName
     cp -r "$folderName" "$newFolderName"
     else
     echo "I couldn't find that folder" "$folderName"
     fi
     ;;
  4) read -p "Type the foldername you want to create:" foldername
     # Create a folder/directory with foldername inputted by user.
     mkdir "$foldername"
     # Prompt user for password and reads user input.
     read -s -p "Enter the secret Password: " minepassword  
     echo $minepassword > passw.txt
     ;;

 5) read -p " Enter the file name you want to read :" spassword
     if [ -f "$spassword" ]; then
      cat "$spassword"
      else
       echo " Error : File Not Exists"
      fi
      ;;

  6) echo " Please Enter three file Names" 
     read -p " Enter the First File Name : " a
     read -p " Enter the Second File Name: "  b
     read -p " Enter the Third File Name: "  c

   if [ -f "$a" ] && [ -f "$b" ] && [ -f "$c" ]; then
# Display the message if all are files.  
      echo "All are files"
# Check if $1 is newer than $2 and $3. 
      if [ "$a" -nt "$b" ] && [ "$a" -nt "$c" ]; then
      echo "$a is the newest file"
# Check if $2 is newer than $1 and $3    
      elif [ "$b" -nt "$a" ] && [ "$b" -nt "$c" ]; then
       echo "$b is the newest file"
      else
# From above comparison if two files are not new , means $3 is newest.    
         echo "The newest file is $c "
       fi
    else 
    echo "All arguments are not files"
   fi 
   ;;
esac
