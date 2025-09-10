# Print square of numbers from 1 to 100
seq 100 | awk '{print $1, $1*$1}'
