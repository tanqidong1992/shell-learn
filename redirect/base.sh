#!/bin/bash
cat < ./test-data/a.txt
echo "xx"

array=(a1 a2 a3 a4)

for a in ${array[*]}
do
    echo $a
done >> array-out.txt
echo 'env list:'
for e in $(env)
do
    echo $e
done