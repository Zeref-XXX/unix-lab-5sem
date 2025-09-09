#!/bin/bash
# Menu-driven script for Q.4 to Q.13

while true; do
    echo ""
    echo "========= MENU ========="
    echo "4) Compile & Execute p1.c"
    echo "5) List all C files"
    echo "6) Print contents of Downloads and Desktop"
    echo "7) Print current working directory (without pwd)"
    echo "8) Print the first line of p1.c"
    echo "9) Print the last line of p1.c"
    echo "10) Replace 'stdio' with 'conio' in p1.c"
    echo "11) Delete 2nd line of p1.c"
    echo "12) Display C files where 'stdio' is used"
    echo "13) Print line numbers where 'if' occurs in p2.c"
    echo "0) Exit"
    echo "========================"
    read -p "Enter your choice: " choice

    case $choice in
        4) gcc p1.c -o p1 && ./p1 ;;
        5) ls *.c ;;
        6) ls ~/Downloads ~/Desktop ;;
        7) echo $PWD ;;
        8) head -n 1 p1.c ;;
        9) tail -n 1 p1.c ;;
        10) sed -i 's/stdio/conio/g' p1.c && echo "Replaced 'stdio' with 'conio' in p1.c" ;;
        11) sed -i '2d' p1.c && echo "Deleted 2nd line of p1.c" ;;
        12) grep -l 'stdio' *.c ;;
        13) grep -n '\<if\>' p2.c ;;
        0) echo "Exiting..."; break ;;
        *) echo "Invalid choice! Try again." ;;
    esac
done
