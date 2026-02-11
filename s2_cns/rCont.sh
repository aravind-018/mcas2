#!/bin/bash
file="test.txt"

    if  [ -f $file ]
    then 
        echo "reverse of $file"
        cat $file
        echo "-> "
        tac $file
    else
        echo "file doesnt exist "
    fi
