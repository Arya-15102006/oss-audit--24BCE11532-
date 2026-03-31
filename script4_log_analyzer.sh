#!/bin/bash
# Script 4: Log File Analyzer
# Usage:./log_analyzer.sh /var/log/syslog [keyword]

LOGFILE=$1
# Defaulting to "vlc" if no second argument is provided
KEYWORD=${2:-"vlc"}
COUNT=0

# Security check: Does the file exist?
if [! -f "$LOGFILE" ]; then
    echo "Audit Error: Log file $LOGFILE not found."
    exit 1
fi

echo "Scanning $LOGFILE for security/error keyword: '$KEYWORD'..."

# Process the file line by line
while IFS= read -r LINE; do
    # Search for keyword case-insensitively
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Audit Complete: Found $COUNT entries matching '$KEYWORD'."

# If hits found, show the most recent ones
if; then
    echo "--- Most Recent Activity ---"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi
