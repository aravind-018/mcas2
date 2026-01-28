#!/bin/bash
while true 
do 
    read -p "enter 2 no.s: "a b 
    read -p "enter the operator : " op
    case $op in 
         "+" )
              ans=$(echo "$a + $b" | bc);;
         "-" )
              ans=$(echo "$a - $b" |bc);;
         "*" )
              ans=$(echo "$a * $b" |bc);;
              