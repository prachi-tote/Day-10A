#!/bin/bash -x
read -p "Enter first value a " a
read -p "Enter second value b " b
read -p "Enter third value c " c
result[1]=$(echo |awk '{print a+b*c}' a=$a b=$b c=$c)
result[2]=$(echo |awk '{print c+a/b}' a=$a b=$b c=$c)
result[3]=$(echo |awk '{print a%b+c}' a=$a b=$b c=$c)
result[4]=$(echo |awk '{print a*b+c}' a=$a b=$b c=$c)
arr=(${result[@]})
echo "${arr[@]}"
printf "\n";
for (( i=1; i<=4; i++ ))
do
   arr[$i]=${result[$i]}
   echo "arr[$i]=${arr[$i]}"
done
printf "\n";
for el in "${arr[@]}"
do
   echo $el
done | sort -n
printf "\n";
for el in "${arr[@]}"
do
   echo $el
done | sort -nr
