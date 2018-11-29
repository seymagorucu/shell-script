#!/bin/bash

i=0 
max=0 

echo " write integer number"

 
until [ "$number" = "end" ] 
do
read number

	while [[ $number !=  ?(-)+([0-9])  && "$number" != "end" ]]; 
	do
	echo "please enter integer number  or end "
	read number
	done

if [[ $number ==  ?(-)+([0-9])  ]];
then 
array_numbers[i]="$number"
i=$(($i+1))
fi

done


for element_numbers in "${array_numbers[@]}"
do
	if [ "$max" -lt "$element_numbers" ]
	then 
	max=$element_numbers
	fi	
done


echo "max number =" $max

