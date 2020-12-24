#! /bin/bash -x

magicNumber=$(((RANDOM % 100)+1))
num=100
check=0
num=$((num/2))

while [ $check -ne 2 ]
do
	temp=$((num/2))
	if [ $magicNumber -gt $num ]
	then
		num=$((num+temp))
		check=1
	elif [ $magicNumber -lt $num ]
	then
		num=$((num-temp))
        	check=0
	else
        	check=2
	fi
done
