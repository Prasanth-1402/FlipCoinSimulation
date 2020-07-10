#!/bin/bash -x

#CONSTANTS
IS_HEAD=1
IS_TAIL=0

result=$((RANDOM%2))

if [[ $result -eq $IS_HEAD ]]
then
	echo HEAD
else
	echo TAIL
fi
