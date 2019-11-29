#!/bin/bash

echo -n "read a"; read a
echo -n "read b"; read b
let c=$a+$b
echo a+b:$c
a='$b'
echo a:$a
a="$b"
echo a:$a
export ME=tqd
echo me is:$ME
unset ME
echo me is $ME
${ME? Error the env ME is undefined}
