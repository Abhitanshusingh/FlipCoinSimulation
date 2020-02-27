#!/bin/bash -x
#PRINTING MESSAGE
printf "Welcome to flip coin simulation \n"
#GENERATING RANDOM VALUE
result=$((RANDOM%2+1))
isHead=1
#CONDITION IS TRUE THEN HEAD OTHERWISE TAIL
if(( $isHead == $result))
then
	echo "Head"
else
	echo "Tail"
fi
