#!/bin/bash

PS3="Run Command:"
select choice in date w hostname 'uname -a' Exit
do
    case $choice in
        date)
            $choice
        ;;
        w)
            $choice
        ;;
        hostname)
            $choice
        ;;
        'uname -a')
            $choice
        ;;
        Exit)
            exit
        ;;
        *)
            echo "Unsupported Command:$choice"
        ;;
        esac
done