# Print Occupation and Salary of "Charlie"
awk -F, '$1=="Charlie" {print $4, $5}' input.txt