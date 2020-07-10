#!/usr/local/bin/bash 

read -p "Enter a Number to Limit the Simulation : " input

#CONSTANTS
IS_HEAD=1
IS_TAIL=0

declare -A CounterDictionary



function DifferenceChecker(){
HEADcount=$1
TAILcount=$2
if(($HEADcount<TAILcount))
then
   echo HEAD COUNT IS $HEADcount
   echo TAIL COUNT IS $TAILcount
   echo  TAIL WON BY  $((TAILcount-HEADcount))
elif((TAILcount<HEADcount))
then
   echo HEAD COUNT IS $HEADcount
   echo TAIL COUNT IS $TAILcount
   echo HEAD WON BY $((HEADcount-TAILcount))
else
   echo HEAD COUNT IS $HEADcount
   echo TAIL COUNT IS $TAILcount
   echo ITS A TIE--------------------------------- ITS A TIE..... LET\'S GO AGAIN....
	HEADcount=0
	TAILcount=0
   tieDealer
fi
}


function findTossWinner(){
#LOCAL_VARIABLES
count=0
HEADcount=0
TAILcount=0

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

DifferenceChecker $HEADcount $TAILcount
}



function tieDealer(){
while(($HEADcount-$TAILcount<2 && $TAILcount-$HEADcount<2))
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
	DifferenceChecker $HEADcount $TAILcount	

}



findTossWinner

