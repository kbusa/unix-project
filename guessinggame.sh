#!/usr/bin/env bash

function userinput {
	echo "How many files are in the current directory?"
	read guess

	numfiles=0
	for files in $(ls)
	do
		let numfiles=$numfiles+1
	done

    if [[ $guess -eq $numfiles ]]
	then
		echo "Your guess is correct! Congratulations!"
	else
    	if [[ $guess -lt $numfiles ]]
		then
			echo "That's too low! Try again."
			userinput
		else
			echo "That's too high! Try again."
			userinput
		fi
	fi
}

userinput