read -p "enter no. terms :" n
a=o
b=1
for i in $(seq 1 $n)
do
    c=$((a+b))
    echo $a
    a=$b
    b=$c
done 