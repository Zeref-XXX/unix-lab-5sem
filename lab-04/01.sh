# Q.1) Write a Shell Script to arrange the elements of the array number = {9, 4, 7, 6, 2, 5, 3} in  ascending order. 
 
#!/bin/bash
number=(9 4 7 6 2 5 3)

n=${#number[@]} #length of array
#bubble
for ((i=0;i<n;i++))
    do
        for((j=0;j<n-i-1;j++))
        do
            if [ ${number[j]} -gt ${number[$((j+1))]} ]
                then
                    #swap
                    temp=${number[j]}
                    number[j]=${number[$((j+1))]}
                    number[$((j+1))]=$temp
            fi
    done
done
    
echo "Sorted array : ${number[@]}"
        

