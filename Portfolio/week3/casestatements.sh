echo "1. Create a folder." #Prints the output line.
echo "2. List files in a folder." # Prints the output line.
echo "3. Copy a folder."# Prints the output line.
echo "4. Save a Password." # Prints the output line.
echo "5. Read a Password." # Prints the output line.
echo "6. Print Newest File." # Prints the output line.
echo " Please type any number 1 to 6 to proceed :" # Prints the output line.
read ab # Read the input from user.
case $ab in # Execute case according to the user input.

  1) read -p "Type the foldername you want to create:" foldername # Reads user input.
     mkdir "$foldername" # Make directory as the name provided by user.
     ;;
  2) read -p "Enter the name of folder you want to list files:" foldername # Reads user input.
     ls -la $foldername # List all the contents of the folder.
     ;;
     
  3) read -p "type the name of the folder you like to copy: " folderName # Reads User Input.
     if [ -d "$folderName" ];then # Checks if it is directory.
     read -p "type the name of the destination folder: " newFolderName # Reads User Input.
     cp -r "$folderName" "$newFolderName" # Copies one folder into another.
     else # This part executes When if condition fails.
     echo "I couldn't find that folder" "$folderName"
     fi # Finishes the if Condition.
     ;;
  4) read -p "Type the foldername you want to create:" foldername
     # Create a folder/directory with foldername inputted by user.
     mkdir "$foldername"
     # Prompt user for password and reads user input.
     read -s -p "Enter the secret Password: " minepassword  # Reads the user password.
     echo $minepassword > passw.txt # Saves the password in text file.
     ;;

 5) read -p " Enter the file name you want to read :" spassword # Reads the user input.
     if [ -f "$spassword" ]; then # Checks if it is file.
      cat "$spassword" # Show the contents of the file.
      else
       echo " Error : File Not Exists" # Display output message.
      fi # Finishes if statement.
      ;;

  6) echo " Please Enter three file Names" 
     read -p " Enter the First File Name : " a # Read the user input.
     read -p " Enter the Second File Name: "  b # Reads the user input.
     read -p " Enter the Third File Name: "  c # Reads the user input.
# Checks if a, b and c all are files.
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
       fi # finishes if statement.
    else 
    echo "All arguments are not files" # Display Output .
   fi # Ending if.
   ;;
esac
