# Q.2) Develop a Shell Script that implements a factorial function. The function should accept an argument from the main program and return the computed factorial value back to the main  program

#!/bin/bash
source ./02-fact.sh
 
read -p "Enter a number: " num

result=$(factorial $num)

echo "Factorial of $num is: $result"