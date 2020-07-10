#!/bin/bash -x

#CONSTANTS
IS_HEAD=1
IS_TAIL=0

read -p "Enter the Number to limit the simulation : " input

#VARIABLES
count=0
HEADCount=0
TAILCount=0

while(($count!=$input))
do
	result=$((RANDOM%2))
	if [[ $result -eq $IS_HEAD ]]
	then
		((HEADCount++))
	else
		((TAILCount++))
	fi
	((count++))
done

echo HEAD COUNT = $HEADCount 
echo TAIL COUNT = $TAILCount
