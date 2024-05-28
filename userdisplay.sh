#!/bin/bash

#get username and store in variable
read -p "Enter your username: " username

#checks username against known users and outputs based on if user exists or not. Output is redirected to /dev/null
#to surpress it
if id "$username" &>/dev/null; then
	#sytax error was here previously, halting the script ({ instead of ( used when checking user_id value)
	user_id=$(id -u "$username")
	echo "User ID for $username: $user_id"

	user_groups=$(id -Gn "$username")
	echo "Groups for $username: $user_groups"
else
	echo "User $username does not exist."
fi
