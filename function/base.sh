#!/bin/bash


function sum(){
    a=$1
    b=$2
    #local c
    let c=a+b
    echo $c
}

d=$(sum 1 2)
echo "d:$d"
# $c is empty
echo "c:$c"
sum 1 2
# $c is 3
echo "c:$c" 
exit 0
