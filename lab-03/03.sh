#!/bin/bash

if [ $# -ne 1 ]; then
	exit 1
fi

num=$1
if [ "$num" -le 1 ]; then
	echo "Not Prime"
	exit 1
fi
 
is_prime=1
for(( i=2;i*i<=num;i++ ))
do
	if [ $((num%i)) -eq 0 ]; then
	is_prime=0
	break
	fi
done

if  [ $is_prime -eq 1 ]; then
	echo "$num is prime"
else 
	echo "$num is not prime"
fi
