#!/bin/bash -x
declare -A dict_result
declare -a arr_result
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

#Adding results to dictionary
dict_result[op1]=$result
dict_result[op2]=$result2
dict_result[op3]=$result3
dict_result[op4]=$result4
#Displaying dictionary
echo "Values are : " ${dict_result[@]}
echo "Keys are : " ${!dict_result[@]}

#Displaying array
inc=0
for i in ${!dict_result[@]}
do
	arr_result[$inc]=${dict_result[$i]}
	((inc++))
done
echo "Array values are : " ${arr_result[@]}
echo "Array index are : " ${!arr_result[@]}

