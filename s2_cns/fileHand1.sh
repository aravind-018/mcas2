#!/bin/bash
read -p "enter a file name:" file1
echo "enter the contennts of the $file1: "
cat > $file1
read -p "enter existing file name:" file2
echo "displaying coipy of contents from $file1 to $file2"
cp $file1 $file2
cat $file2
#2
