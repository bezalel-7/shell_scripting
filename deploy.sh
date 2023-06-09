#!/bin/bash

# Pull the latest code from the repository
git pull

# Build the application
./gradlew build

# Stop the application server
systemctl stop myapp.service

# Copy the new build to the deployment directory
cp -r build/myapp /opt/myapp

# Start the application server
systemctl start myapp.service

# Verify the status of the application
systemctl status myapp.service

