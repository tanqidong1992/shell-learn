#!/bin/bash
declare -r a=1;
echo "The readonly variable is:${a}"
a=2
unset a

declare -i n;
n=1
echo "n=1 is $n"
n=2
echo "n=2 is $n"
n='a';
echo "n=a is $n"
n='b';
echo "n=b is $n"
n='abc';
echo "n=abc is $n"
declare -i m=1;
declare -p m
declare -x M=123
