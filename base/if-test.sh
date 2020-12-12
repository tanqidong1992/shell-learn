#!/bin/bash

a='a b c'
#这是一种错误的写法,注意判定string,必须加上双引号,因为一旦字符串中含有空格,就会报错
if [ -z $a ]; then
  echo "a is empty"
else
  echo "a is not empty"
fi
 if [ -n $a ]; then
  echo "a is not empty"
else
  echo "a is empty"
fi

if [ -z "$a" ]; then
  echo "a is empty"
else
  echo "a is not empty"
fi

if test -n "$a" ; then
  echo "test: a is not empty"
fi