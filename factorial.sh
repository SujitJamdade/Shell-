#! /bin/bash

read -p "Enter the number : " num
factorial=1
if [[ $num -eq 0 || $num -eq 1 ]]
then
	echo "Factorial of "$num" is 1"
else
	for ((i=1;i<=$num;i++))
	do
		factorial=$(($factorial*$i))
	done
	echo "Factorial of "$num" is "$factorial
fi
