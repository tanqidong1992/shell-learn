#!/bin/bash
while :
do
    read -sp "Please input Your Exit passport: " passport
    
    if [ "${passport}" = '123456' ]; then
        printf '\n'
        echo "Congratulations! "
        break;
    else
        printf '%s\n' "The passport is wrong!"
    fi
done