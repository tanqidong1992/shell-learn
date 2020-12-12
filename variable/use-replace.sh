#!/bin/bash
t="1"
echo "no empty t:+${t:+replaceValue}"
echo "no empty t${t}"
t="1"
echo "no empty t+${t+replaceValue}"
echo "no empty t${t}"
t=""
echo "empty t:+${t:+replaceValue}"
echo "empty t${t}"
t=""
echo "empty t+${t+replaceValue}"
echo "empty t${t}"
unset t
echo "undefined t:+${t:+replaceValue}"
echo "undefined t${t}"
unset t
echo "undefined t+${t+replaceValue}"
echo "undefined t${t}"