#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: ./03_service_monitor.sh <service>"
    exit 1
fi

SERVICE_NAME=$1

if systemctl is-active "$SERVICE_NAME" > /dev/null 2>&1; then
    echo "$SERVICE_NAME is running."
else
    echo "$SERVICE_NAME is not running. Attempting restart..."
    if systemctl restart "$SERVICE_NAME"; then  
        echo "$SERVICE_NAME restarted successfully."
    else
        echo "Failed to restart $SERVICE_NAME."
        exit 1
    fi
fi