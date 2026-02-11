#!/bin/bash
read -p "enter directory name you want to search : " dir
for filename in "C:/Users/cacet/OneDrive/Desktop/$dir"
do
    if [ -d "$filename" ]
    then 
        echo "$filename is a directory"
    else
        echo  "$filename is not directory"
    fi
done
