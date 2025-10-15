# Q.1) Create a file input.txt and store the following data in the file
# Q.2 Consider the content of the input.txt file as a record of an employee. Write a shell  command using awk to print the name and salary of each employee.
awk -F, 'NR>1 {print $1, $5}' input.txt

