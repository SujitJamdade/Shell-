#! /bin/bash

read -p "Enter the number : " num

if [[ $num -gt 1 ]]
then
	for ((i=2; i<num; i++))
	do
		if [[ $(($num % $i)) -eq 0 ]]
		then
			echo $num" is not a prime number."
			exit
		fi
	done
	echo $num" is a prime number."
else
	echo $num" is not a prime number and not a composite."
fi
