#Create three C-Programs such as p1.c, p2.c, p3.c. Program p1.c computes the square of the number lying in the range [1-1000 ], program p2.c prints the odd numbers in the range [ 1-1000], while program p3.c prints the prime numbers in the range [1-1000]. Write a shell script to execute p1.c in the background while p2.c and p3.c in sequence. The output of each program should be displayed or stored in a file.

#!/bin/bash
# Script to compile and run p1.c, p2.c, p3.c

# Compile programs
gcc p1.c -o p1
gcc p2.c -o p2
gcc p3.c -o p3

# Run p1 in background, store output in output_p1.txt
./p1 &

# Run p2 and p3 sequentially
./p2
./p3

echo "Execution completed. Check output_p1.txt, output_p2.txt, output_p3.txt"
