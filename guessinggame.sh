#!/usr/bin/env bash

files=$(ls | wc -l)

function your_guess { read -p "Enter your guess of number of files: " guess ;}

your_guess

while [ $guess -ne $files ]
do 
	if [ $guess -gt $files ]
	then
		echo " Your guess is too high"
	else [ $guess -lt $files ]
		echo " Your guess is too low"
	fi
	your_guess
done

echo "Congratulations! Your guess was right!"
