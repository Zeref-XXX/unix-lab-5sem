#!/bin/bash
if [ $# -ne 3 ]; then
	echo "less arguments "
	exit 1
fi
x=$1
y=$2
choice=$3
 if [ $choice -eq 1 ]; then
	echo "$x + $y : $((x+y))"
elif [ $choice -eq 2 ]; then
	echo "$x - $y is $((x-y))"
elif [ $choice -eq 3 ]; then
	echo "$x * $y : $((x*y))"
elif [ $choice -eq 4 ]; then
	echo "$x / $y : $((x/y))"
else
	echo "wrong choice"
fi
