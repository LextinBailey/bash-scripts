#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: ./04_process_file.sh <file> "
    exit 1
fi

FILE_NAME=$1

if [ ! -f "$FILE_NAME" ]; then
    echo "$FILE_NAME does not exist."
    exit 1
fi

LINE_NUMBER=0

while IFS= read -r line; do
    LINE_NUMBER=$(( LINE_NUMBER + 1 ))
    echo "Line $LINE_NUMBER: $line"
done < "$FILE_NAME"