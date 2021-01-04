#! /bin/bash -x

counter=0

while [ $counter -lt 10 ]
do
	randNum=$(((RANDOM%900)+100))
	arr[((counter++))]=$randNum
done

for ((i = 0; i<10; i++))
do

    for((j = 0; j<10-i-1; j++))
    do

        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Second smallest number is "${arr[1]}" & second largest number is "${arr[8]}
