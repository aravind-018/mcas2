#!/bin/bash
read -p "enter a string " st
read -p "enter a starting letter and no.of letters " a b
subst=${st:$a:$b}
echo $subst