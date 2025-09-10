# Print record where salary > 70000

awk -F, 'NR>1 && $5>70000' input.txt
