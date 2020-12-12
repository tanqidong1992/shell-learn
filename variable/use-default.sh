#!/bin/bash
t=''
echo "empty t:- ${t:-defaultValue}"
echo "empty t- ${t-defaultValue}"
echo "empty t ${t}"
unset t
echo "undefined t:- ${t:-defaultValue}"
echo "undefined t- ${t-defaultValue}"
echo "undefined t ${t}"