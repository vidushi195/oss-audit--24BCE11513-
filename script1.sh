#!/bin/bash
# Script 1: System Identity Report
# Author: Vidushi Agrawal
# Course: Open Source Software

# --- Variables [cite: 57]
STUDENT_NAME="Vidushi Agrawal"
SOFTWARE_CHOICE="VLC Media Player"

# --- System info [cite: 57]
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(grep ^PRETTY_NAME /etc/os-release | cut -d'"' -f2)
CURRENT_DATE=$(date)

# --- Display [cite: 58]
echo "=========================================="
echo "           Open Source Audit              "
echo "=========================================="
echo "Student : $STUDENT_NAME"
echo "Software: $SOFTWARE_CHOICE"
echo "------------------------------------------"
echo "Distro  : $DISTRO"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Uptime  : $UPTIME"
echo "Date    : $CURRENT_DATE"
echo "------------------------------------------"
echo "Note: This OS is covered by the GNU GPL License."
