#!/bin/bash


read -p "Enter a number: " num

numbers=($(seq 1 $num))

for i in "${numbers[@]}"; do
	if (( $i % 3 == 0)) && (( $i % 5 == 0)); then
		echo "Fizzbuzz!"
	elif (( $i % 3 == 0 )); then
		echo "Fizz!"
	elif (( $i % 5 == 0 )); then
		echo "Buzz!"
	else
		echo $i
	fi
done




