Black='\033[30m'
Red='\033[31m'
echo -e "1.${Red} Create a folder" # Outputs the string that passed.
echo "2. List files in a folder."# Output the string.
echo "3. Copy a folder." # Output the string.
echo "4. Save a Password." # Output the string.
echo "5. Read a Password."# Displays output message.
echo "6. Print Newest File."# Output the string.
echo "7. Calculator. "# Output the string.
echo "8. Create Multiple Directories." # Output the string.
echo "9. Print every third Number between 1 to 100000."# Output the string.
echo "10. Read the text file contents whether is file or directory."# Output string message.
echo "11. Ping the google and gets response as the URL you type." # Output string message that passed.
read ep # Read the User input.
case $ep in # Execute the case expression accoring to input

  1) read -p "Type the foldername you want to create:" foldername # Reads user input.
     mkdir "$foldername" # Make Directory .
     ;;
  2) read -p "Enter the name of folder you want to list files:" foldername # Reads user input.
     ls -la $foldername # list the contents of folder.
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

7) Black='\033[30m' # Different Colour and codes.
   Green='\033[32m'
   Brown='\033[33m'
   Blue='\033[34m'
   Purple='\033[35m'
   Cyan='\033[36m'
   Grey='\033[37m'
   Red='\033[31m'
   Clear='\033[37m'

   read -p " Enter the First Numbber: " a # Reads the user input.
   read -p " Type any sign  + - x / : " b # Reads the user input.
   read -p " Enter the second Number: " c # Reads the user input.

if [ "$b" == "+" ]; then # Checks if second argument is +.
    let sum=$a+$c # Add a and c and put result in sum.
    echo -e "${Blue} $sum ${Clear}" #Prints the result in blue colour.
elif [ "$b" == "-" ]; then # Condition Checks if second argument is -.
    let sum=$a-$c # Subtract c from a.
    echo -e "${Green} $sum ${Clear}" # Output the result in green colour which is in $sum.
elif [ "$b" == "*" ]; then # Checks if the second argument is x.
     let sum=$a\*$c # Perform arithmetic operation.
     echo -e "${Red} $sum ${Clear}" # Displays output in Red colour.
elif [ "$b" == "/" ]; then #  Checks if second argument is /.
     let sum=$a/$c # Perform arithmetic operation.
     echo -e "${Purple} $sum ${Clear}" # Display output in purple colour.
else # if the above parts of condition fails then this part executes.
     echo "Please choose operators add sub mul div only"
fi        # Finishing the if statement.
;;
8) read -p " Enter First number :" a # Reads input from user.
   read -p " Enter Second number :" b # Reads input from user.


for ((i= $a; i<=$b; i++)) # Loop starts as first and second arguemnts input by user.
do
	echo "Creating directory number $i" # Output Directory Number.
	mkdir "week$i" # Make Directory.
done # end for.
;;

9) read -p " Enter a number to start between 1 to 1000 :" a # Reads User Input.
while [[ $a -le 1000 ]] # Checks if the input is less than 1000.
do
echo "$a" # outputs the number.
let a=a+3 # Increment by 3.
done  # End While.
;;
10) IFS=$'\n'# Red line by line.
for j in $(cat file.txt); do # Takes j as argument.
    if [ -f "$j" ]; then # Checks if j is file.
        echo $j " That File Exists" # Outputs the message that file exists.
    else # this part runs if the above if statement fails.
     if [ -d "$j" ]; then #Checks if j is directory.
        echo $j "That's a Directory" # Outputs the string.
     else # this part runs if above part fails.
        echo $j "I don't know what that is" # Outputs the string.
     fi # Finishes the first if.
    fi    # Finishes the second if statement.
done # End for.
;;
11) ping -c1 8.8.8.8 # Checks the connectivity status between source and destination.
if [ $? -eq 0 ]; then # Checks if equal to zero.
echo " The internet seems to be connected" # Output the string.
read -p "please type a website URL to download: " URL # Reads the user input.
 if [ $URL == exit ]; then # Checks if the input is equal to exit.
 echo "exit" # Output the string.
 else 
wget -o- $URL # Downloads the input by user.
 fi # End of If
else # when if condition fails this part executes.
echo " Error Internet not connected"# output the string.
fi # Finish if condition
;;
esac #Finish case statement.
