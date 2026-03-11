#!/bin/bash
read -p "enter directory name you want to search : " dir
for filename in "/mnt/c/Users/cacet/OneDrive/Desktop/MCAs2/$dir"
do
    if [ -d "$filename" ]
    then 
        echo "$filename is a directory"
    else
        echo  "$filename is not directory"
    fi
done
