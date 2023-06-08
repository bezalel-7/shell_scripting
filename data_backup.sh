#!/bin/bash

# Backup Script

# Read the source directory from user input
echo -n "Enter the source directory: "
read source_dir

# Read the destination directory from user input
echo -n "Enter the destination directory: "
read destination_dir

# Create a filename with the current date and time
backup_file="backup_$(date +'%Y%m%d_%H%M%S').tar.gz"

# Create the backup archive
tar -czf "$destination_dir/$backup_file" "$source_dir"

# Check if the backup was successful
if [ $? -eq 0 ]; then
    echo "Backup created successfully: $backup_file"
else
    echo "Backup creation failed."
fi

