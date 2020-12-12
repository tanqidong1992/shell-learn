#!/bin/bash
str="You are a beautiful girl,I do love You"
echo ${str/You/She}
echo ${str//You/She}
echo ${str/You}
echo ${str//You}

