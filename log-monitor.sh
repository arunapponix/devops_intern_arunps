#!/bin/bash

# Specify the log file to monitor
LOG_FILE="/var/log/nginx/error.log"

# Function to handle cleanup and exit
cleanup() {
    echo "Stopping log monitoring..."
    # Add additional cleanup tasks here if needed
    # For example:
#    rm -f /etc/nginx/*
 #   unset ENV_VARIABLE_NAME
#    exit 0
}

# Trap Ctrl+C to call cleanup function
trap cleanup INT

# Initializing counters
ERROR_COUNT=0
ERROR_MESSAGES=""

# Start monitoring the log file
echo "Monitoring log file: $LOG_FILE"
echo "Press Ctrl+C to stop."

# Continuously display new log entries for existing and newlog entries
tail -f "$LOG_FILE" | while read -r line; do
    # Perform log analysis
    if [[ "$line" == *"ERROR"* ]]; then
        ((ERROR_COUNT++))
        ERROR_MESSAGES+="\n$line"
    fi
    # Check for HTTP status codes (customize as needed)
    if [[ "$line" == *"HTTP/"* ]]; then
        HTTP_STATUS_CODES+="\n$line"
    fi
done

# Generating summary report
echo -e "\nSummary Report:"
echo "Total Errors: $ERROR_COUNT"
echo -e "Error Messages:$ERROR_MESSAGES"


#end of script
