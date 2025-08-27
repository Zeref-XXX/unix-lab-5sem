# Q.4) Create a Shell Script that accepts an integer as input and prints its digits in reverse order 

#!/bin/bash
read -p "Enter an integer: " num

rev=0

while [ $num -gt 0 ]
do
    rem=$((num % 10))          
    rev=$((rev * 10 + rem))    
    num=$((num / 10))           
done

echo "Reversed number is : $rev"
