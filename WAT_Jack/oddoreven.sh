#!/bin/bash

#create a function that asks for a number and returns if the number is odd or even

function oddoreven() {
	#ask user for a number using read
	read -p "Please enter a number: " chosennumber

	#pass to an if statement to declare if it's odd or even using remainder calculation
	if [ $((chosennumber % 2)) -eq 0 ]; then
		echo "$chosennumber is Even" >> file3 ; echo "$chosennumber is even - results recorded in file3"
	else
		echo "$chosennumber is Odd" >> file3 ; echo "$chosennumber number is odd - results recorded in file3"
	fi
}

#call the function
oddoreven

#Next I wanted to take a user input using read and pass the response on so that file3 was deleted based on user input
#However, I ended up being able to break out of the question so I wrapped it in a while loop
#using the wildcard I was able to confine the user to this question until they answered either y/n
#I wanted to store the response in a variable, just in case I needed it to execute future parts of the script
#but it may not be necessary

while true; do
	read -p "Do you want to delete fil3? (y/n): " yn
	case $yn in
		[Yy] ) response="yes" | rm file3 ; echo "file3 has been deleted" ;  break;;
		[Nn] ) response="no"; break;;
		* ) echo "Please answer with 'y' or 'n'.";;
	esac
done

#change file3 name and move to the home folder
mv file3 ~/changedFileName


