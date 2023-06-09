#!/bin/bash

# Define log file and rotation configuration
log_file="/var/log/myapp.log"
rotate_conf="/etc/logrotate.d/myapp"

# Run log rotation for the specified log file
logrotate "$rotate_conf"

# Display log rotation completion message
echo "Log rotation completed successfully."

