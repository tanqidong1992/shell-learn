#!/bin/bash
a=(1 2 3)
echo "${a[1]}"
echo "a is ${a}"
unset a[1]
echo "${a[1]}"
for item in ${a[*]}
do
   echo ${item}
done