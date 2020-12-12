#!/bin/bash
str=test.tar.gz
echo ${str#*.}
echo ${str##*.}
echo ${str%.*}
echo ${str%%.*}