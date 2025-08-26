#!/bin/bash
num1=$1
num2=$2
num3=$3

if [ $num1 -gt $num2 ]; then
	if [ $num1 -gt $num3] ; then
	echo "$num1 is greater"
	else
	echo "$num3 is  greater"
	fi
else
	if [ $num2 -gt $num3 ]; then
		echo "$num2 is greater"
	else 
		echo "$num3 is greater"
	fi
fi
