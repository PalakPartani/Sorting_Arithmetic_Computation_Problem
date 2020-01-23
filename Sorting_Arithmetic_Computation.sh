#!/bin/bash 
declare -A dict_result
declare -a arr_result

echo "Welcome to Sorting arithmetic computation problem"
read -p "Enter value of a : " a
read -p "Enter value of b : " b
read -p "Enter value of c : " c
result=$(( $a + $b * $c ))
result2=$(( $a * $b + $c ))
result3=$( echo "scale=2; $c + $a / $b" | bc )
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

for((i=0;i<4;i++))
do
	arr_result[i]=${dict_result[op$((i+1))]}
	
done
echo "Array values are : " ${arr_result[@]}
echo "Array index are : " ${!arr_result[@]}


#Sorting in descending order
for ((j=0;j<${#arr_result[@]};j++))
do
	sz=$(( ${#arr_result[@]}-$j-1 ))
	for ((i=0;i<$sz;i++))
	do

		if [[ ${arr_result[i]%%.*} -gt ${arr_result[((i+1))]%%.*} ]]
		then
			temp=${arr_result[$i]}
			arr_result[i]=${arr_result[$((i+1))]}
			arr_result[i+1]=$temp
		fi
	done
done
echo "Array values in descending order : " ${arr_result[@]}



