#!/bin/bash
for ((i=1;i<100;i++))
do

printf "%d \r" $i
sleep 0.1s
done
printf "\n"
