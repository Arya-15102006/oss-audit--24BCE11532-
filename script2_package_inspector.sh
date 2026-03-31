#!/bin/bash
# Script 2: FOSS Package Inspector
# Purpose: Audits software installation status and versioning.

PACKAGE="vlc"

echo "Initiating audit for package: $PACKAGE"
echo "--------------------------------------"

# Checking if package is installed (using dpkg for Debian/Ubuntu)
if dpkg -l $PACKAGE &>/dev/null; then
    echo " $PACKAGE is currently installed."
    # Extract version using awk for precision
    VERSION=$(dpkg -s $PACKAGE | grep '^Version' | awk '{print $2}')
    echo " Active Version: $VERSION"
else
    echo " $PACKAGE is NOT found on this system."
fi

echo ""
echo "--- Philosophy Summary ---"
# Case statement to categorize the software purpose
case $PACKAGE in
    vlc) 
        echo "VLC: A global standard for media freedom and codec interoperability." ;;
    apache2|httpd) 
        echo "Apache: The server engine that enabled the early web revolution." ;;
    mysql-server|mariadb) 
        echo "Database: Providing a structured backbone for open data storage." ;;
    firefox) 
        echo "Firefox: A critical defender of privacy and the open internet." ;;
    *) 
        echo "Unknown: A potential piece of niche or proprietary software." ;;
esac
