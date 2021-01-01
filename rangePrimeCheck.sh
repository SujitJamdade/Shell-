#! /bin/bash

min=11
max=20

for ((num=min; num<=max; num++))
do
	for ((i=2; i<num; i++))
        do
                if [[ $(($num % $i)) -eq 0 ]]
                then
#                        echo $num" is not a prime number."
#                        exit
                fi
        done
        echo $num" is a prime number."
done
