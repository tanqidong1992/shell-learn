#!/bin/bash

var=12

until [ $var -gt 15 ]
do
    echo "loop with var:${var}"
    let var++
done