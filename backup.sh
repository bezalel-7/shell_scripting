#!/bin/bash

# Define backup source and destination directories
source_dir="/path/to/source"
backup_dir="/path/to/backup"

# Create a timestamp for the backup filename
timestamp=$(date +"%Y%m%d%H%M%S")

# Create a compressed backup archive
tar -czvf "$backup_dir/backup_$timestamp.tar.gz" "$source_dir"

# Display backup completion message
echo "Backup completed successfully."

