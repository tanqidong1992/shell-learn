#!/bin/bash

getScriptParentDirectory(){
    local scriptName=$1
    if [ -z "${scriptName}" ]; then
        exit 1
    else
        echo "$(basename ${scriptName})"

    fi
}
shellFolder=$(dirname $(readlink -f "$0"))
scriptName=$0
echo "${shellFolder}"
echo "script name is $(pwd)/${scriptName}"
echo "the script direction is: $(getScriptParentDirectory ${scriptName})"

