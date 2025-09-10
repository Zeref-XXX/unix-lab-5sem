# Q.1) Create a file input.txt and store the following data in the file

awk -F, 'NR>1 {print $1, $5}' input.txt

