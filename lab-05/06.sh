# Assume that the present working directory of the terminal is Desktop. Write a shell script to print the contents of the Download folder as well as the contents of the Desktop folder.

#!/bin/bash
# Script to print contents of Downloads and Desktop folders

echo "Contents of Downloads folder:"
ls ~/Downloads

echo ""
echo "Contents of Desktop folder:"
ls ~/Desktop
