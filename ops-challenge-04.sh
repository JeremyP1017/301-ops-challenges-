#!/bin/bash

while true; do
    echo "Select an option:"
    echo "1. Hello world"
    echo "2. Ping self"
    echo "3. IP info"
    echo "4. Exit"

    read -r choice

    case $choice in
        1)
            echo "Hello world!"
            ;;
        2)
            ping -c 4 127.0.0.1
            ;;
        3)
            ifconfig
            ;;
        4)
            exit 0
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done