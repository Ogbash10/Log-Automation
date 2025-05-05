#!/bin/bash

# Define log directory and remote server
LOG_DIR="/var/log"
LOG_FILE="/tmp/system_logs.tar.gz"
REMOTE_SERVER="sadiq@10.0.2.100:/home/bashiru/log"

# Collect logs and compress them
tar -czf $LOG_FILE $LOG_DIR

# Send the compressed logs to the remote server
scp $LOG_FILE $REMOTE_SERVER

# Clean up the local tar file
rm $LOG_FILE

# Display completion message
echo "Logs have been copied to $REMOTE_SERVER and local file has been deleted."
