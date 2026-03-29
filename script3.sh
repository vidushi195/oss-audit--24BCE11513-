#!/bin/bash
# Script 3: Disk and Permission Auditor
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "------------------------------------------"

# Loop through directories [cite: 66]
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

# VLC Config check [cite: 68]
VLC_DIR="$HOME/.config/vlc"
if [ -d "$VLC_DIR" ]; then
    echo "------------------------------------------"
    echo "VLC Config Found: $(ls -ld $VLC_DIR | awk '{print $1, $3, $4}')"
fi
