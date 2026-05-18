#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: ./05_validate_input.sh <username> <age>"
    exit 1
fi

USERNAME=$1
AGE=$2

if [[ ! "$USERNAME" =~ ^[a-zA-Z0-9]+$ ]]; then
    echo "Invalid username. Use only letters and numbers."
    exit 1
fi

if [[ ! "$AGE" =~ ^[0-9]+$ ]]; then
    echo "Invalid age. Use only numbers."
    exit 1
fi

if [ "$AGE" -lt 1 -o "$AGE" -gt 120 ]; then
    echo "Invalid age. Must be between 1 and 120."
    exit 1
fi

echo "Valid input! Username: $USERNAME, Age: $AGE"