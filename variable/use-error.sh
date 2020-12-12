#!/bin/bash
t=""
#echo ${t:?Error t is empty or undefined}
#echo ${t?Error t is undefined}

unset t
#echo ${t:?Error t is empty or undefined}
echo ${t?Error t is undefined}