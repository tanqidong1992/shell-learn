#!/bin/bash

echo 'for i in 1 2 3 4 5'
for i in 1 2 3 4 5
do
   echo "${i}"
done
array=("1a" "2b" "3c")
echo 'for item in ${array[*]}'
for item in ${array[*]}
do
    echo "${item}"
done
echo 'for ((i=0;i<3;i++))'
for ((i=0;i<3;i++))
do
    echo "$i"
done

echo "nested for test"
for ((i=0;i<3;i++))
do
    for((j=0;j<3;j++))
    do
        echo "${i},${j}"
    done
done