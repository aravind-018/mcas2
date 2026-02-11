#!/bin/bash
read -p"enter a number " n
if [ $(($n % 2)) -eq 0 ]
then
    echo "even no"
else
    echo "odd no "
fi