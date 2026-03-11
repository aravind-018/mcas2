#!/bin/bash
read -p "enter the name of the directory:" dir
direct="/mnt/c/Users/cacet/OneDrive/Desktop/MCAs2/$dir"
if [ -d "$direct" ]
    then
        num_files=$(find "$direct" -maxdepth 1 -type f | wc -l)
        echo "there are $num_files files in $direct"
    else
    echo "$direct is not a directory"
    fi