# Write a shell script to display the name of all C files in which the stdio word has been used

#!/bin/bash
# Script to display names of all C files containing the word 'stdio'

grep -l 'stdio' *.c
