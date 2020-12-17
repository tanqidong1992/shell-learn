#!/bin/bash

for i in 1 2 3 4 5
do
    echo "for with i:$i"
    if [ $i -ge 3 ]; then
        break
    fi
done

for i in 1 2 3 4 5
do
     for j in 1 2 3 4 5 6 7
     do
         echo "nested for with(i,j):(${i},${j})"
         if [ $j -eq 5 ];then
             break 2
         fi
     done 
done