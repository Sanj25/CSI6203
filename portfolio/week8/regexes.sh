cd ~/CSI6203/
echo "*************************************"
echo " In the working directory Grep sed"
grep -r sed
echo "*************************************"
echo " Grep all the lines starting from letter m"
echo "*************************************"
grep -r "^m"
echo "**************************************"
echo " Grep the lines that contains three digit numbers in working Directory"
echo  "********************************************"
grep -r -E "[[:digit:]] {3}"
echo  "*********************************************"
echo " Grep all the lines in the working directory that starts with vowel"
echo "*****************************************************"
grep -r "^[aeiou]"
echo "***********************************************"
echo " Grep all lines in working directory with loop"
echo"**********************************************"
grep -r -w -E 'for | while'
echo "***********************************************"
echo " Grep the echo statements in working Directory with at least three words"
echo "***************************************************"
grep -r -P '^echo.*\w+\s+\w+\s+\w+'
echo "****************************************************"

