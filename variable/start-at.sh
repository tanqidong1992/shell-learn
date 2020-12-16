#!/bin/bash
set 1a 2b 3c 4d 5f '6d d'
oldIfs=$IFS
IFS=","
echo $*
echo "$*"
echo $@
echo "$@"
echo "arg count:$#"
echo 'for arg in $*'
i=1;
for arg in $* 
do
    echo "arg ${i}: ${arg}"
    let i++
done
i=1
echo 'for arg in "$*"'
for arg in "$*" 
do
    echo "arg ${i}: ${arg}"
    let i++
done
echo 'for arg in $@'
i=1
for arg in $@ 
do
    echo "arg ${i}: ${arg}"
    let i++
done
echo 'for arg in "$@"'
i=1
for arg in "$@" 
do
    echo "arg ${i}: ${arg}"
    let i++
done
IFS="$oldIfs"