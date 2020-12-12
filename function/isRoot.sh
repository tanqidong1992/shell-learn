#!/bin/bash

function isRoot(){
    if [ $(id -u) -eq 0 ]; then
        return 0
    else
        return 1
    fi
}
isRoot

if [ $? -eq 0 ]; then
    echo "Current user is root!"
else
    echo "Current user is not root!"
fi