#!/bin/bash
read -p "enter a file name :" file1
echo "enter contents od $file1: "
cat > $file1
read -p "enter a pattern to search in file : " s
grep -ni $s $file1