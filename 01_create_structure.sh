#!/bin/bash

if [ -z "$1" ]; then
    echo "Please provide a project name."
    exit 1
fi

PROJECT_NAME=$1

echo "Creating project structure for $PROJECT_NAME..."

mkdir -p "$PROJECT_NAME"/{src,docs,tests}

echo "Done."

