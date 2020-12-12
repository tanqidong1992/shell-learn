#!/bin/bash
echo "current script:$0"
shellPath=$(readlink -f ${0})
echo "shell path:${shellPath}"
shellDir=$(dirname ${shellPath})
echo "shell dir:${shellDir}"