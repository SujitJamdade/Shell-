#! /bin/bash -x

read -p "Enter the num " num
i=1
while [ $i -le $num ]
do
        count=0
#	index=0
        if [[ $((num % i))  == 0 ]]
        then
                j=1
                while [ $j -le $i ]
                do
                        if [[ $((i % j)) == 0 ]]
                        then
                                count=$((count+1))
                        fi
                        j=$((j+1))
                done

                if [[ $count == 2 ]]
                then
                        arr[((index++))]=$i
                fi
        fi
        i=$((i+1))
done
echo ${arr[@]}
