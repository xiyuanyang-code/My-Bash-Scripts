#!/bin/bash

# For sourcing all the functions in this dir
# You can put `source all.sh` in to your dotfiles like .zshrc or .bashrc

# Get the directory of the current script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Source all .sh files in the directory
# *excluding .git directory

find "$SCRIPT_DIR" -type f -name "*.sh" ! -path "*/.git/*" ! -path "*/.history/*" | while read -r file; do
    # Skip this script itself
    if [[ "$file" == "$SCRIPT_DIR/all.sh" ]]; then
        continue
    fi
    # Source the file
    source "$file"
    echo "$file loaded successfully."
done