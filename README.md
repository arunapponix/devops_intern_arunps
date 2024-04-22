# Log Monitoring and Analysis Using Bash Script

## Overview
This Bash script is designed to monitor a specified log file (`/var/log/nginx/error.log` by default).
continuously displaying new log entries and performing basic log analysis. It tracks errors and HTTP status codes in real-time and generates a summary report upon interruption by the user by pressing (Ctrl+C).

## Usage
1. **Customize Log File**: If the log file path needs to be changed, modify the `LOG_FILE` variable at the beginning of the script.
2. **Execute Script**: Run the script using `./log-monitor.sh`.
3. **Stop Monitoring**: Press Ctrl+C to stop the script, it will  generate a summary report.

## Features
- **Real-time Monitoring**: Continuously displays new log entries.
- **Error Tracking**: Counts and displays error messages containing the string "ERROR".
- **HTTP Status Code Analysis**: Tracks HTTP status codes.
- **Summary Report**: Generates a summary report upon interruption, including total errors and error messages.
- **File Removal**: Cleanup function included to perform file removal or other cleanup tasks upon interruption.

## Customization
- **Log File Path**: Change the `LOG_FILE` variable to monitor a different log file.
- **HTTP Status Codes**: Customize the detection of HTTP status codes according to your log format.

## Cleanup
The script includes a `cleanup()` function to handle cleanup tasks upon interruption (Ctrl+C). Additional cleanup tasks, such as file removal or environment variable unsetting, can be added as needed.

## Dependencies
- Bash shell
