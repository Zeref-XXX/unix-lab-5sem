# Q.7) Write a Shell Script to display all odd numbers in the range from 1 to 1000.

#!/bin/bash

echo "all odd numbers in the range from 1 to 1000 are -> "

for ((i=1; i<=1000; i+=2))
do
    echo "$i "
done
