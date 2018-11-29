#!/bin/bash

numbers="$1"

i="0" 
 

#reading numbers in text
while read numbers
do 
	
array_numbers[i]="$numbers" 
i=$(($i+1))

done < "$numbers" #read all numbers are running while 

echo output

#read the array elements and write a number of stars
for element in "${array_numbers[@]}" 
do
	for((a=0; a<element; a++));do
	printf "*"
	done
echo    
done
