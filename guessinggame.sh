#!/user/bin/env bash
# File Name : guessinggame.sh

let target=$(ls -l . | egrep '^-' | wc -l)

function validate {
	if [[ $1 =~ [^0-9] ]]
	then
		 local flag=0
	else
		 local flag=1
	fi
	echo $flag
}

while [[ $target -gt 0 ]]
do
	echo "Guess the number of files : "
	read response
	if [[ $(validate $response) -eq 0 ]]
	then
		echo "You entered an Invalid number!"
		echo ""
		continue
	elif [[ $response -lt $target ]]
	then
		echo "Your guess is too low."
	elif [[ $response -gt $target ]]
	then
		echo "Your guess is too high."
	elif [[ $response -eq $target ]]
	then
		echo "Congratulations - your Guess is right."
		break
	fi
	echo ""
done
