#!/bin/bash

# Function to find log files older than 7 days
find_old_logs() {
    # Set the directory to search and the log file extension
    local directory="$1"
    local extension="$2"
    
    # Check if the directory exists
    if [ ! -d "$directory" ]; then
        echo "Directory $directory does not exist."
        exit 1
    fi

    # Find files older than 7 days
    find "$directory" -type f -name "*.$extension" -mtime +7
}

# Function to send an email with the log results
send_email() {
    local email_subject="$1"
    local email_recipient="$2"
    local email_body="$3"

    echo -e "$email_body" | mail -s "$email_subject" "$email_recipient"
}

# Main script logic

# Set your directory and email details
log_directory="/path/to/logs"           # Modify this with your log directory
log_extension="log"                     # Modify this if your logs have a different extension
email_recipient="recipient@example.com" # Modify with your recipient email
email_subject="Logs Older Than 7 Days"  # Subject for the email

# Find the logs older than 7 days
log_files=$(find_old_logs "$log_directory" "$log_extension")

# Check if we found any old logs
if [ -z "$log_files" ]; then
    email_body="No log files older than 7 days were found."
else
    email_body="The following log files are older than 7 days:\n\n$log_files"
fi

# Send email
send_email "$email_subject" "$email_recipient" "$email_body"

echo "Email sent to $email_recipient with the results."
