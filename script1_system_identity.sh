#!/bin/bash
# Script 1: System Identity Report
# Author: Senior Security Auditor | Course: Open Source Software OSS-401
# Purpose: Generates a system profile and confirms licensing status.

# --- Variables ---
STUDENT_NAME="Lead Auditor"
SOFTWARE_CHOICE="VLC Media Player"

# --- System info ---
# Extracting the pretty name of the distribution from os-release
DISTRO=$(grep "PRETTY_NAME" /etc/os-release | cut -d= -f2 | tr -d '"')
KERNEL=$(uname -r)
USER_NAME=$(whoami)
USER_HOME=$HOME
UPTIME=$(uptime -p)
CURRENT_TIME=$(date '+%Y-%m-%d %H:%M:%S')

# --- Display ---
echo "===================================================="
echo " Open Source Audit — $STUDENT_NAME"
echo "===================================================="
echo "Report Timestamp : $CURRENT_TIME"
echo "Linux Distro     : $DISTRO"
echo "Kernel Version   : $KERNEL"
echo "Current Identity : $USER_NAME"
echo "Home Directory   : $USER_HOME"
echo "System Uptime    : $UPTIME"
echo "----------------------------------------------------"
echo "LICENSE AUDIT:"
echo "This system is governed by the GNU General Public License."
echo "You have the freedom to run, study, and share this software."
echo "===================================================="
