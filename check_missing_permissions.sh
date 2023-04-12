#!/bin/bash

# Check if the required arguments are provided
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 <directory> <plugin.yml>"
    exit 1
fi

# Set the target directory and plugin.yml file
target_dir="$1"
plugin_yml="$2"

# Check if the plugin.yml file exists
if [ ! -f "$plugin_yml" ]; then
    echo "Error: $plugin_yml does not exist"
    exit 1
fi

# Run the find_permissions.sh script and store the output
permissions=$(./find_permissions "$target_dir")

# Check for missing permissions in the plugin.yml file
echo "Missing permissions:"
while read -r permission; do
    if ! grep -q "$permission" "$plugin_yml"; then
        echo "- $permission"
    fi
done <<< "$permissions"
