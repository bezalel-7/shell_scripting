local_file="path_to_local_file"
remote_directory="path_to_remote_directory"
remote_filename="remote_filename"

# SSH remote login
sshpass -p "$remote_password" ssh "$remote_username@$remote_host" << EOF
    # Remote commands to execute after SSH login
    echo "Remote server logged in successfully!"

    # SCP file transfer
    echo "Copying file from local to remote server..."
    scp "$local_file" "$remote_username@$remote_host:$remote_directory/$remote_filename"

    # Remote command execution after file transfer
    echo "File transfer complete!"
    # Add any additional remote commands here

    # Exit remote session
    exit
EOF
