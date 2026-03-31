#!/bin/bash
# Script 3: Disk and Permission Auditor
# Purpose: Verifies directory permissions and monitors storage consumption.

# Array of critical directories for audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "System Directory Security Audit"
echo "------------------------------"
# Formatting header with printf
printf "%-15s %-15s %-10s %-10s\n" "Path" "Permissions" "Owner" "Size"

for DIR in "${DIRS[@]}"; do
    if; then
        # Using ls and awk to extract specific fields from the long listing
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        # du command provides human-readable size
        SIZE=$(du -sh "$DIR" 2>/dev/null | awk '{print $1}')
        printf "%-15s %-15s %-10s %-10s\n" "$DIR" "$PERMS" "$OWNER" "$SIZE"
    else
        echo " $DIR does not exist on this mount point."
    fi
done

echo ""
echo "--- VLC Configuration Audit ---"
# Check if the specific VLC config directory exists
VLC_DIR="$HOME/.config/vlc"
if; then
    echo "User config detected at $VLC_DIR"
    ls -ld "$VLC_DIR"
else
    echo "Warning: VLC user configuration directory is missing."
fi
