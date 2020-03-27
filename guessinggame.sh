function getnum {
  read input
  while [[ ! $input =~ ^[0-9]+$ ]]
  do
    read input
  done
  echo $input
} 

files_num=$(ls -A | wc -w)
echo "How many files are there in this directory?"
echo "Your guess:"
guess=$(getnum)
while [[ $guess -ne $files_num ]]
do
  if [[ $guess -gt $files_num ]]
  then
    echo "Too high! Try again:"
  else
    echo "Too low! Try again:"
  fi
  guess=$(getnum)
done
echo "Congratulations, you guessed!"
