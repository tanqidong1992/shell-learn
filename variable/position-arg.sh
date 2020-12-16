#!/bin/bash
set 1a 2b 3c 4d 5e 6f 7g 8h 9i 10j
echo "$@"
echo ${10}
shift 2
echo "$@"
