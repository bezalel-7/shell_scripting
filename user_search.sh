#!/bin/bash

# Read the username to search for
read -p "Enter the username to search for: " username

# Check if the user exists
if id "$username" >/dev/null 2>&1; then
    echo "User '$username' exists in the system."
else
    echo "User '$username' does not exist in the system."
fi
