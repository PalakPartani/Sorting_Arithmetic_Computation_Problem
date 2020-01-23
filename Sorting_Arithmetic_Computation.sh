#!/bin/bash -x
declare -A dict_result
declare -a arr_result
declare -a revarr
echo "Welcome to Sorting arithmetic computation problem"
read -p "Enter value of a : " a
read -p "Enter value of b : " b
read -p "Enter value of c : " c
result=$(( $a + $b * $c ))
result2=$(( $a * $b + $c ))
result3=$(( $c + $( echo "scale=2; $(($a / $b))" | bc ) ))
result4=$(( $a % $b + $c ))
echo "Result :" $result
echo "Result :" $result2
echo "Result :" $result3
echo "Result :" $result4





