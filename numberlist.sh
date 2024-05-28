#!/bin/bash

#use a while loop? If user wants to enter a umber, loop repeats until no is given then output is rendered

numbers=()

read_numbers() {
	while true; do
		read -p "Enter a number (or type 'done'to finish): " input

	if [[ "$input" == "done" ]];then 
		break
	else
		numbers+=("$input")
	fi
	done
	echo "${numbers[@]}"
}

sort_array() {
	local input_array=("$@")
	local sorted_array
	IFS=$'\n' sorted_array=($(sort -n <<<"${input_array[*]}"))
	unset IFS
	echo "${sorted_array[@]}"
}

sorted_result=$(sort_array "${numbers[@]}")

echo "$sorted_result"

read_numbers
sort_array


