#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(basename "$0" | cut -d "." -f1)
LOGFILE="/tmp/$SCRIPT_NAME-$TIMESTAMP.log"

# Debugging
echo "USERID: $USERID"
echo "TIMESTAMP: $TIMESTAMP"
echo "SCRIPT_NAME: $SCRIPT_NAME"
echo "LOGFILE: $LOGFILE"

# Create log file
touch "$LOGFILE"

# Check if log file is created
if [ -f "$LOGFILE" ]; then
    echo "Log file created successfully at $LOGFILE"
else
    echo "Failed to create log file."
fi
