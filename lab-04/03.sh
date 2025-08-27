# Write a Shell Script to display the multiplication table of every number from 1 to 20.
 
#!/bin/bash
for ((num=1; num<=20; num++))
do
    echo "Table of $num"
    for ((i=1; i<=10; i++))
    do
        echo "$num x $i = $((num * i))"
    done
    echo "-x-x-x-x-x-x-x-x-x-x-x-x-"
done
