#Print line number of record containing employee "Bob"
awk -F, '$1=="Bob" {print NR}' input.txt