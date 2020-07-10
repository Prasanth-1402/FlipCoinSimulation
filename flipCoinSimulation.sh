#!/usr/local/bin/bash 

read -p "Enter a Number to Limit the Simulation : " input

#CONSTANTS
IS_HEAD=1
IS_TAIL=0

#VARIABLES
count=0
HEADcount=0
TAILcount=0

declare -A CounterDictionary

while(($HEADcount<22 && $TAILcount<22 && $count<$input))
do
	result=$((RANDOM%2))
	if [[ $result -eq $IS_HEAD ]]
	then
		CounterDictionary[H]=$((HEADcount++))
	else
		CounterDictionary[T]=$((TAILcount++))
	fi
	((count++))
done

if(($HEADcount<TAILcount))
then
	echo  TAIL WON BY  $((TAILCount-HEADcount))
elif((TAILcount<HEADcount))
then
	echo HEAD WON BY $((HEADCount-TAILcount))
else
	echo ITS A TIE
fi





echo HEAD COUNT = $HEADcount 
echo TAIL COUNT = $TAILcount
