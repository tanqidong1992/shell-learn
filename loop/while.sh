#!/bin/bash

n=10

while [ $n -gt 5 ]
do
    echo "loop with n=${n}"
    let n--
done

#read file and print each line of the file
while read -r line
do
   echo $line
done < test.txt



#while :
#do
#done