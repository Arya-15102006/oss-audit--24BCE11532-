#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Purpose: Interactive tool for documenting development philosophy.

echo "==========================================="
echo "   OPEN SOURCE MANIFESTO GENERATOR"
echo "==========================================="
echo ""

# Interactive user input
read -p "1. Which open-source tool is vital to your workflow? " TOOL
read -p "2. Define 'Freedom' in the context of software: " FREEDOM
read -p "3. What project would you share with the world? " PROJECT

DATE_STAMP=$(date '+%d %B %Y')
ID_TAG=$(whoami)
OUTPUT_FILE="manifesto_${ID_TAG}.txt"

# Generating the manifesto using a heredoc-style approach with redirection
echo "--- PERSONAL MANIFESTO OF SOFTWARE FREEDOM ---" > "$OUTPUT_FILE"
echo "Created by: $ID_TAG" >> "$OUTPUT_FILE"
echo "Date: $DATE_STAMP" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "I believe that tools like $TOOL should belong to the global community." >> "$OUTPUT_FILE"
echo "To me, software freedom represents $FREEDOM." >> "$OUTPUT_FILE"
echo "I commit to building and sharing $PROJECT freely," >> "$OUTPUT_FILE"
echo "ensuring that the digital commons remain open to all." >> "$OUTPUT_FILE"

echo ""
echo "Manifesto successfully generated and saved to $OUTPUT_FILE"
echo "-------------------------------------------"
# Displaying the result
cat "$OUTPUT_FILE"
echo "-------------------------------------------"

# Note: The 'alias' concept can be used to run this script easily:
# alias generate_manifesto='./manifesto_generator.sh'
