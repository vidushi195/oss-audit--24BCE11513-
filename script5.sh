#!/bin/bash
# Script 5: Open Source Manifesto Generator
echo "Answer three questions to generate your manifesto."
echo

# Read user input [cite: 75, 76]
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Write to file [cite: 77]
echo "--- OPEN SOURCE MANIFESTO ---" > $OUTPUT
echo "Created by Vidushi Agrawal on $DATE" >> $OUTPUT
echo "I believe tools like $TOOL change the world." >> $OUTPUT
echo "To me, freedom is: $FREEDOM." >> $OUTPUT
echo "I pledge to build $BUILD and share the code." >> $OUTPUT

echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
