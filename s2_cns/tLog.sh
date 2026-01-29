#!/bin/bash
if [ $# -eq 1 ]
then
    who > mca
    count=$(grep -c "^$1" mca)
    echo "User $1 is logged in $count time(s)"
else
    echo "Please enter user name"
fi
