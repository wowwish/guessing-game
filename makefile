README.md : guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "Date and Time of Run : $$(date +%c)" >> README.md
	echo "Number of Lines of Code (guessinggames.sh) : $$(wc -l guessinggame.sh | egrep -o '[0-9]+')" >> README.md
