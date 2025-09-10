# Write a shell script to print the line number where the word if has been used in the p2.c file.
#!/bin/bash
# Script to print line numbers where 'if' occurs in p2.c

grep -n '\<if\>' p2.c
