#!/bin/bash

# Function to check if a directory exists
dir_exists() {
    local dir="$1"
    if [ -d "$dir" ]; then
        return 0  # Directory exists
    else
        return 1  # Directory does not exist
    fi
}

# Check if the username is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <username> [source_file_path]"
    exit 1
fi

# Set the username
USER_NAME="$1"

# Set the source file path (default to "GIMP: Sorrento/gimp.png")
SRC_FILE="${2:-GIMP: Sorrento/gimp.png}"

# Set the destination directories to check
DEST_DIR_1="/home/$USER_NAME/.config/GIMP/2.10/splashes"
DEST_DIR_2="/home/$USER_NAME/.var/app/org.gimp.GIMP/config/GIMP/2.10/splashes"

# Check if the first destination directory exists
if dir_exists "$DEST_DIR_1"; then
    # Copy the file to the first destination directory
    cp "$SRC_FILE" "$DEST_DIR_1"
    echo "File copied to $DEST_DIR_1"
elif dir_exists "$DEST_DIR_2"; then
    # Copy the file to the second destination directory
    cp "$SRC_FILE" "$DEST_DIR_2"
    echo "File copied to $DEST_DIR_2"
else
    echo "Neither destination directory exists."
fi