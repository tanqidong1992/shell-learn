#!/bin/bash

function split_str(){
    local str=${1}
    local delimiter=${2}
    old_ifs=${IFS};
    IFS=${delimiter}
    local array=($str)
    echo ${array[*]}
    IFS="${old_ifs}"
    return 0
}


a="1,2,3,4,5,6:1:3:5,1"

items=($(split_str $a ','))
echo "items:0: ${items[0]}"
for item in ${items[*]}
do
    echo "${item}"
done