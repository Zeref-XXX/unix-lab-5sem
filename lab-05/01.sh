# Q.1) Write a shell script to concatenate the content of two files, f1.txt and f2.txt, into the third file, f3.txt.

#!/bin/bash 
# Check if f1.txt and f2.txt exist
if [ ! -f f1.txt ] || [ ! -f f2.txt ]; then
    echo "One or both input files do not exist."
    exit 1
fi
 
cat f1.txt f2.txt > f3.txt

echo "Files f1.txt and f2.txt have been concatenated into f3.txt"
 