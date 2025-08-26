#!/bin/bash

echo "Enter the number"
read n
if [ $n -eq 0 ]; then
	exit 0
fi

n1=0
n2=1


if [ $n -eq 1 ]; then 
	echo "$n1" 
	exit 0
fi

if [ $n -eq 2 ]; then
	echo "$n1 $n2"
	exit 0
fi
echo -n "$n1 $n2"

for(( i=2;i<n;i++ ))
do  
	n3=$((n1+n2)) 
	echo -n " $n3" 
	n1=$n2
	n2=$n3
done
