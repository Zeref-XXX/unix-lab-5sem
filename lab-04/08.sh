# Q.8) Write a Shell Script to print the names of all bash programs present in the current  directory.

#!/bin/bash
echo "Bash program is present directory :"
 
for file in *.sh
do
    if [ -f "$file" ]; then
        echo "$file"
    fi
done
