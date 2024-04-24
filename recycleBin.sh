#!/bin/bash

# Define the recycle bin path
RECYCLE_BIN="/mnt/user/Multimedia/RecycleBin"

# Check if the recycle bin directory exists, if not, create it
if [ ! -d "$RECYCLE_BIN" ]; then
    mkdir -p "$RECYCLE_BIN"
fi

# Move the deleted file to the recycle bin
for file in "$@"; do
    mv "$file" "$RECYCLE_BIN/"
done
