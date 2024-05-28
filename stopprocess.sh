#!/bin/bash


#list all active processes
echo "Now listing all active processes" 

ps -e 

#ask user to input on a specific process id

read -p "Please enter the process ID of the process you'd like to terminate: " processid

#check to see if the response given is a numeric and kill terminal if not to prevent further interaction
if ! [[ "$processid" =~ ^[0-9]+$ ]]; then
	echo "Invalid ProcessId. Please enter a valid numeric ProcessId."
	exit
fi

#if response is numeric, check to see if it's a valid process and attempt to kill it.
#potentially throw response in case user doesn't have su privilages

if ps -p "$processid" > /dev/null 2>&1; then
	#stop the specified process
	kill "$processid"
	if [ $? -eq 0 ]; then
		echo "Process $processid has been terminated."
	else
		echo "Failed to stop process $processid. You may need Super User Privilages."
	fi
else
	echo "No such process exists."
fi



