# Q.6) Write a Shell Script that takes the principal amount, time and interest from the user and computes the compound interest. Assume that interest is compounded yearly.

#!/bin/bash
read -p "Enter Amount: " p
read -p "Enter  years: " t
read -p "Enter  rate : " r
 
amount=$(echo "$p * (1 + $r / 100)^$t" | bc -l)
ci=$(echo "$amount - $p" | bc -l)

echo "Compound Interest after $t years = $ci"
echo "Total Amount = $amount"
