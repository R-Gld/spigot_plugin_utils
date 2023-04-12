#!/bin/bash

# Check if a directory is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Set the target directory
target_dir="$1"

# Find all .java files and extract permissions, then sort and remove duplicates
permissions=$(find "$target_dir" -type f -name "*.java" -exec grep -o -E 'hasPermission\("([^"]+)"' {} + | sed 's/.*hasPermission("//' | sed 's/"//' | sort | uniq)

# Print the permissions
echo "$permissions"
