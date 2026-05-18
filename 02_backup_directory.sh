#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: ./02_backup_directory.sh <source> <destination>"
    exit 1
fi

SOURCE_DIRECTORY=$1
BACKUP_DIRECTORY=$2

if [ ! -d "$SOURCE_DIRECTORY" ]; then
    echo "$SOURCE_DIRECTORY does not exist."
    exit 1
fi

if [ ! -d "$BACKUP_DIRECTORY" ]; then
    echo "$BACKUP_DIRECTORY does not exist."
    exit 1
fi

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_PATH="$BACKUP_DIRECTORY/$(basename "$SOURCE_DIRECTORY")_$TIMESTAMP"

if cp -rv "$SOURCE_DIRECTORY" "$BACKUP_PATH"; then
    echo "Success."
else
    echo "Something went wrong."
    exit 1
fi