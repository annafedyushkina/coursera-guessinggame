all: README.md

README.md: guessinggame.sh
	echo "# GuessingGame Task" > README.md
	echo "<br/>" >> README.md
	echo "File creation time:" >> README.md
	date "+%d-%m-%Y %H:%M:%S" >> README.md
	echo "<br/>" >> README.md
	echo "Number of lines in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | cut -f1 -d' ' >> README.md
clean:
	rm README.md
