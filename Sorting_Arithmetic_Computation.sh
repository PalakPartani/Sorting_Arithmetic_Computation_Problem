#!/bin/bash
echo "Welcome to Sorting arithmetic computation problem"
read -p "Enter value of a : " a
read -p "Enter value of b : " b
read -p "Enter value of c : " c
result=$(( $a + $b * $c ))
result2=$(( $a * $b + $c ))
echo "Result :" $result
echo "Result :" $result2

