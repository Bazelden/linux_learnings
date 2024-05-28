#!/bin/bash

read -p "Please enter your first-name: " firstname 

if [ -d "WAT_$firstname" ]; then
	echo "Directories with this name already exist, please run the script again and enter a different name."
else

	mkdir "WAT_$firstname"

	cd "WAT_$firstname"

	touch file1 | echo "This is the initial file" > file1 ; touch file2 ; touch file3

	mkdir "childDir"

	cp file1 childDir/

	echo "Thanks, $firstname! Directories and files have been created for you."

fi


