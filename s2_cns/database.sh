#!/bin/bash
i="y"
read -p "Enter name of database : " db
while [ $i = "y" ]
do 
   clear 
   echo "1.View database "
   echo "2.view Specific record "
   echo "3.add record "
   echo "4.Delete record "
   echo "5.exit"
   read -p "Enter your choices : " ch
   case $ch in
   1) cat $db;;
   2) read -p "enter id :" id 
      grep -i "$id" $db;;
   3) read -p "enter new student id: " tid
      read -p "enter designation: " des
      read -p "enter college name:  " college
      echo "$tid $des $college">>$db;;
   4) read -p "enter id: " id
        echo "$db"
      if grep -q "^$id " "$db"
      then
        grep -v "^$id " "$db" > temp && mv temp "$db"
        echo "record is deleted"
      else
        echo "ID not found"
      fi;;
   5) exit ;;
   *) echo "invalid choice ";;
   esac
   read -p "do you want to continue ? " i
   if [ $i != "y" ]
   then
       exit
   fi
done          