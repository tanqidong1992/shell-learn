#!/bin/bash

echo $BASH
echo $HOME
set 1 2 3
IFS=',:'
echo "$@"
echo "$*"
echo $*
echo $TMOUT
TMOUT=3
read a;
echo "The value of a is:${a}"

echo $UID