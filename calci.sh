#!/bin/bash

# Function to perform arithmetic calculations
calculate() {
    case "$2" in
        +)
            result=$(echo "$1 + $3" | bc)
            echo "Result: $result"
            ;;
        -)
            result=$(echo "$1 - $3" | bc)
            echo "Result: $result"
            ;;
        *)
            result=$(echo "$1 * $3" | bc)
            echo "Result: $result"
            ;;
        /)
            if [ "$3" -eq 0 ]; then
                echo "Error: Division by zero is not allowed."
            else
                result=$(echo "$1 / $3" | bc)
                echo "Result: $result"
            fi
            ;;
        *)
            echo "Error: Invalid operator."
            ;;
    esac
}

# Check the number of command-line arguments
if [ "$#" -ne 3 ]; then
    echo "Error: Invalid number of arguments. Usage: $0 <number1> <operator> <number2>"
else
    # Read the command-line arguments
    num1=$1
    operator=$2
    num2=$3

    # Call the calculate function
    calculate "$num1" "$operator" "$num2"
fi

