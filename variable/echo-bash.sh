#!/bin/bash
for parameter in ${!BASH*}
do
    echo "The value of ${parameter} is ${!parameter}"
done