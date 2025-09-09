# Write a shell script to replace the word stdio with conio in file p1.c
#!/bin/bash
# Script to replace 'stdio' with 'conio' in p1.c

sed -i 's/stdio/conio/g' p1.c
echo "Replaced 'stdio' with 'conio' in p1.c"
