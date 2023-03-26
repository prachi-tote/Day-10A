#!/bin/bash -x
read -p "Enter first value a" a
read -p "Enter second value b" b
read -p "Enter third value c" c
result[1]=$(echo |awk '{print ((a+b)*c)}' a=$a b=$b c=$c)
echo ${result[@]}


