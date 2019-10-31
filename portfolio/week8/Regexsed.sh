sed -i '/echo .*".*!"/s/Correct/Right/' ../week6/GuesingGame.sh 
sed -rn 's/echo.*"(.*)"/\1/p' ../week6/*GuesingGame.sh > output.txt