# Write a shell script to delete 2nd line of the p1.c file.

#!/bin/bash
# Script to delete the 2nd line of p1.c

sed -i '2d' p1.c
echo "Deleted 2nd line from p1.c"
