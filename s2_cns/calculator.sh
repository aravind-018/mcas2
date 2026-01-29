#!/bin/bash
while true 
do 
    read -p "enter 2 no.s: " a b 
    read -p "enter the operator : " op
    case $op in 
         "+")
              ans=$(("$a + $b"));;
         "-")
              ans=$(("$a - $b"));;
         "*")
              ans=$(("$a * $b"));;
         "/")
              ans=$(("$a / $b"));;
          *) echo "invalid operator";exit 1;;
     esac
     echo "$a $op $b=$ans"
done
     
              