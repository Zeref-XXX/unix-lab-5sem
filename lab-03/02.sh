
num1=$1
num2=$2

#sum=$(echo "$num1+$num2" | bc)


echo "Addition of $num1 and $num2 is $(echo "$num1+$num2"|bc )"
echo "Subtraction of $num and $num2 is $(echo "$num1-$num2"|bc)"
echo "Multiplication of $num1 and $num2 is $(echo "$num1*$num2"|bc)"
echo "Division of  $num1 and $num2 is $(echo "$num1/$num2"|bc)"
