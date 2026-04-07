#!/bin/bash

while true
do
    echo "------ DIRECTORY MANAGEMENT ------"
    echo "1. Create Directory"
    echo "2. List Directories"
    echo "3. Delete Empty Directory"
    echo "4. Delete Non-Empty Directory"
    echo "5. Exit"

    read -p "Enter your choice: " choice

    case $choice in
        1)
            read -p "Enter directory name: " dir
            mkdir "$dir"
            echo "Directory created."
            ;;

        2)
            echo "Directories:"
            ls -d */
            ;;

        3)
            read -p "Enter directory name to delete: " dir
            rmdir "$dir" 2>/dev/null || echo "Directory not empty or not found!"
            ;;

        4)
            read -p "Enter directory name to delete: " dir
            rm -r "$dir"
            echo "Directory deleted."
            ;;

        5)
            echo "Exiting..."
            break
            ;;

        *)
            echo "Invalid option!"
            ;;
    esac

    echo ""
done
