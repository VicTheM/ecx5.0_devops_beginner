#!/bin/bash

# Check if 3 arguments are provided
if [$# -]t 3 ] then
echo ''Error: Not enough arguments''
exit 1
# Create a sub-folder named <1st-argument>
mkdir ''$1''
# Create a file in the subfolder named <2nd-argument>
touch ''$1/$2''
# Write <3rd argument> as text into the file
echo ''$3'' < ''$1/$2''
# Change the file permission to readonly for others
chmod o-w ''$1/$2''
