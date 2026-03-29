#!/bin/bash
# Script 2: FOSS Package Inspector
PACKAGE="vlc"

# Check if package is installed [cite: 60]
if dpkg -s $PACKAGE &>/dev/null || rpm -q $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    # Print version and summary [cite: 61]
    dpkg -s $PACKAGE 2>/dev/null | grep -E 'Version|Description' || rpm -qi $PACKAGE | grep -E 'Version|Summary'
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement for philosophy note [cite: 62]
case $PACKAGE in
    vlc)
        echo "VLC: The cross-platform player that plays anything, built by students to break proprietary barriers." ;;
    httpd)
        echo "Apache: The web server that built the open internet." ;;
    mysql)
        echo "MySQL: Open source at the heart of millions of apps." ;;
    *)
        echo "A community-driven open source tool." ;;
esac
