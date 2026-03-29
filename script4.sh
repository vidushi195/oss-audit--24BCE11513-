#!/bin/bash
# Author: Vidushi Agrawal
# Script 4: Log File Analyzer

# 1. Take log file path as the first argument
LOG_FILE=$1
# 2. Take optional keyword as second argument (defaults to "vlc")
KEYWORD=${2:-"vlc"}

# Validation: Check if a log file path was provided
if [ -z "$LOG_FILE" ]; then
    echo "Usage: ./script4.sh [path_to_log] [keyword]"
    exit 1
fi

# Validation: Check if the file actually exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Error: File '$LOG_FILE' does not exist."
    exit 1
fi

echo "--- Analyzing Log: $LOG_FILE for keyword: '$KEYWORD' ---"

# 3. Count occurrences (case-insensitive)
COUNT=$(grep -i -c "$KEYWORD" "$LOG_FILE")
echo "Total occurrences found: $COUNT"

# 4. Display the last 5 matching lines
echo "---------------------------------------"
if [ "$COUNT" -gt 0 ]; then
    echo "Last 5 matches:"
    grep -i "$KEYWORD" "$LOG_FILE" | tail -n 5
else
    echo "No matches found for '$KEYWORD'."
fi
